//
//  UserApi.swift
//  MatchingApp
//
//  Created by 伊良波将好 on 2019/07/28.
//  Copyright © 2019 伊良波将好. All rights reserved.
//

import Foundation
import FirebaseAuth
import Firebase
import ProgressHUD
import FirebaseStorage

class UserApi {
    func signUp(withUsrname username: String, email :String, password: String, image: UIImage?, onSuccess: @escaping() -> Void, onError: @escaping(_ errorMessage: String) -> Void) {
        
        
        Auth.auth().createUser(withEmail: email, password: password) { (authDataResult, error) in
            
            if error != nil {
                ProgressHUD.showError(error!.localizedDescription)
                return
            }
            if let authData = authDataResult {
                print(authData.user.email)
                
                var dict: Dictionary<String, Any> = [
                    
                    "uid": authData.user.uid,
                    "email": authData.user.email,
                    "username": username,
                    "profileImageUrl": "",
                    "status": "Welcome to MatchingApp"
                ]
                
                guard let imageSelected = image else {
                    ProgressHUD.showError("Please choose your profile image")
                    return
                }
                guard let imageData = imageSelected.jpegData(compressionQuality: 0.4) else {
                    return
                }
                
                let storageRef = Storage.storage().reference(forURL: "gs://chatapp-cd578.appspot.com/")
                
                let storageProfileRef = storageRef.child("profile").child(authData.user.uid)
                
                let metadata = StorageMetadata()
                metadata.contentType = "image/jpg"
                storageProfileRef.putData(imageData, metadata: metadata, completion: { (storageMetadata, error) in
                    if error != nil {
                        print(error?.localizedDescription)
                        return
                    }
                    
                    storageProfileRef.downloadURL(completion: { (url, error) in
                        if let metaImageUrl = url?.absoluteString {
                            dict["profileImageUrl"] = metaImageUrl
                            
                            Database.database().reference().child("users")
                                .child(authData.user.uid).updateChildValues(dict, withCompletionBlock: { (error, ref) in
                                    if error == nil {
                                        onSuccess()
                                    } else {
                                        onError(error!.localizedDescription)
                                    }
                                })
                        }
                    })
                    
                })
                
            }
            
        }
    }
}
