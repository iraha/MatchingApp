//
//  SignUpViewController+UI.swift
//  MatchingApp
//
//  Created by 伊良波将好 on 2019/07/17.
//  Copyright © 2019 伊良波将好. All rights reserved.
//

import UIKit
import ProgressHUD

extension SignUpViewController {
    
    func setupTitleLabel() {
        
        let title = "Sign Up"
        
        let attributedText = NSMutableAttributedString(string: title, attributes: [NSMutableAttributedString.Key.font : UIFont.init(name: "Didot", size: 28)!, NSMutableAttributedString.Key.foregroundColor : UIColor.black
            ])
        
        titleTextLabel.attributedText = attributedText
        
    }
    func setupAvatar() {
        avatar.layer.cornerRadius = 40
        avatar.clipsToBounds = true
        avatar.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(presentPicker))
        avatar.addGestureRecognizer(tapGesture)
    }
    
    @objc func presentPicker() {
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.allowsEditing = true
        picker.delegate = self
        self.present(picker, animated: true, completion: nil)
    }
 
    func setupFullNameTextField() {
        
        fullnameContainerView.layer.borderWidth = 1
        fullnameContainerView.layer.borderColor = UIColor(red: 210/255, green: 210/255, blue: 210/255, alpha: 1).cgColor
        fullnameContainerView.layer.cornerRadius = 3
        fullnameContainerView.clipsToBounds = true
        
        fullnameTextField.borderStyle = .none
        
        let placeholderAttr = NSAttributedString(string: "Full name", attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 170/255, green: 170/255, blue: 170/255, alpha: 1)])
        
        fullnameTextField.attributedPlaceholder = placeholderAttr
        fullnameTextField.textColor = UIColor(red: 99/255, green: 99/255, blue: 99/255, alpha: 1)
        
    }
    func setupEmailTextField() {
        
        emailContainerView.layer.borderWidth = 1
        emailContainerView.layer.borderColor = UIColor(red: 210/255, green: 210/255, blue: 210/255, alpha: 1).cgColor
        emailContainerView.layer.cornerRadius = 3
        emailContainerView.clipsToBounds = true
        
        emailTextField.borderStyle = .none
        
        let placeholderAttr = NSAttributedString(string: "E-mail address", attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 170/255, green: 170/255, blue: 170/255, alpha: 1)])
        
        emailTextField.attributedPlaceholder = placeholderAttr
        emailTextField.textColor = UIColor(red: 99/255, green: 99/255, blue: 99/255, alpha: 1)
        
        
    }
    func setupPasswordTextField() {
        
        passwordContainerView.layer.borderWidth = 1
        passwordContainerView.layer.borderColor = UIColor(red: 210/255, green: 210/255, blue: 210/255, alpha: 1).cgColor
        passwordContainerView.layer.cornerRadius = 3
        passwordContainerView.clipsToBounds = true
        
        passwordTextField.borderStyle = .none
        
        let placeholderAttr = NSAttributedString(string: "Password (8+ Charactor and number)", attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 170/255, green: 170/255, blue: 170/255, alpha: 1)])
        
        passwordTextField.attributedPlaceholder = placeholderAttr
        passwordTextField.textColor = UIColor(red: 99/255, green: 99/255, blue: 99/255, alpha: 1)
        
    }
    func setupSignUpButton() {
        
        signUpButton.setTitle("Sign Up", for: UIControl.State.normal)
        signUpButton.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        signUpButton.backgroundColor = UIColor.black
        signUpButton.layer.cornerRadius = 5
        signUpButton.clipsToBounds = true
        signUpButton.setTitleColor(.white, for: UIControl.State.normal)
        
    }
    func setupSignInButton() {
        
        let attributedText = NSMutableAttributedString(string: "Already have an account? " , attributes: [NSMutableAttributedString.Key.font : UIFont.systemFont(ofSize: 14), NSMutableAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.5)
            ])
        
        let attributedSubText = NSMutableAttributedString(string: "Sign In" , attributes: [NSMutableAttributedString.Key.font : UIFont.systemFont(ofSize: 16), NSMutableAttributedString.Key.foregroundColor : UIColor.black
            ])
        
        attributedText.append(attributedSubText)
        signInButton.setAttributedTitle(attributedText, for: UIControl.State.normal)
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func valiateFields() {
        guard let username = self.fullnameTextField.text, !username.isEmpty else {
            ProgressHUD.showError("Please enter username")
            return
        }
        
        guard let email = self.emailTextField.text, !email.isEmpty else {
            ProgressHUD.showError("Please enter email")
            return
        }
        
        guard let password = self.passwordTextField.text, !password.isEmpty else {
            ProgressHUD.showError("Please enter password")
            return
        }
    }
    
    
    func signUp() {
        
        Api.User.signUp(withUsrname: self.fullnameTextField.text!, email: self.emailTextField.text!, password: self.passwordTextField.text!, image: self.image, onSuccess: {
            print("Done")
        }) { (errorMessage) in
            print(errorMessage)
        }
        
    }
    
}


extension SignUpViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let imageSelected = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
            image = imageSelected
            avatar.image = imageSelected
        }
        if let imageOriginal = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            image = imageOriginal
            avatar.image = imageOriginal
        }
        
        picker.dismiss(animated: true, completion: nil)
    }
    
}
