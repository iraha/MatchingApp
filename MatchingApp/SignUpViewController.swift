//
//  SignUpViewController.swift
//  MatchingApp
//
//  Created by 伊良波将好 on 2019/07/17.
//  Copyright © 2019 伊良波将好. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase
import FirebaseStorage
import ProgressHUD


class SignUpViewController: UIViewController {
    
    @IBOutlet weak var titleTextLabel: UILabel!
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var fullnameContainerView: UIView!
    @IBOutlet weak var fullnameTextField: UITextField!
    @IBOutlet weak var emailContainerView: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordContainerView: UIView!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var signInButton: UIButton!
    
    var image: UIImage? = nil
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpUI()
    }
    
    func setUpUI() {
        setupTitleLabel()
        setupAvatar()
        setupFullNameTextField()
        setupEmailTextField()
        setupPasswordTextField()
        setupSignUpButton()
        setupSignInButton()
    }
    
    @IBAction func dissmissAction(_ sender: Any) {
        
        navigationController?.popViewController(animated: true)
        
    }
    
    
    
    @IBAction func signUpButtonDidTapped(_ sender: Any) {
        self.view.endEditing(true)
        self.valiateFields()
        self.signUp()
        
        
    }
    
}
