//
//  SignInViewController+UI.swift
//  MatchingApp
//
//  Created by 伊良波将好 on 2019/07/18.
//  Copyright © 2019 伊良波将好. All rights reserved.
//

import UIKit


extension SignInViewController {
    
    func setupTitleLabel() {
        
        let title = "Sign In"
        
        let attributedText = NSMutableAttributedString(string: title, attributes: [NSMutableAttributedString.Key.font : UIFont.init(name: "Didot", size: 28)!, NSMutableAttributedString.Key.foregroundColor : UIColor.black
            ])
        
        titleTextLabel.attributedText = attributedText
        
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
    func setupSignInButton() {
        
        signInButton.setTitle("Sign In", for: UIControl.State.normal)
        signInButton.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        signInButton.backgroundColor = UIColor.black
        signInButton.layer.cornerRadius = 5
        signInButton.clipsToBounds = true
        signInButton.setTitleColor(.white, for: UIControl.State.normal)
        
    }
    func setupSignUpButton() {
        
        let attributedText = NSMutableAttributedString(string: "Don't have an account? " , attributes: [NSMutableAttributedString.Key.font : UIFont.systemFont(ofSize: 14), NSMutableAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.5)
            ])
        
        let attributedSubText = NSMutableAttributedString(string: "Sign Up" , attributes: [NSMutableAttributedString.Key.font : UIFont.systemFont(ofSize: 16), NSMutableAttributedString.Key.foregroundColor : UIColor.black
            ])
        
        attributedText.append(attributedSubText)
        signUpButton.setAttributedTitle(attributedText, for: UIControl.State.normal)
        
        
    }
    
}
