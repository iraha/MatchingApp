//
//  ViewController+UI.swift
//  MatchingApp
//
//  Created by 伊良波将好 on 2019/07/17.
//  Copyright © 2019 伊良波将好. All rights reserved.
//

import UIKit


extension ViewController {
    
    func setHeaderTitle() {
        
        let title = "Create a new account"
        let subTitle = "\nDo something new!!!"
        
        let attributedText = NSMutableAttributedString(string: title, attributes: [NSMutableAttributedString.Key.font : UIFont.init(name: "Didot", size: 28)!, NSMutableAttributedString.Key.foregroundColor : UIColor.brown
            ])
        let attributedSubTitle = NSMutableAttributedString(string: subTitle, attributes:[NSMutableAttributedString.Key.font : UIFont.systemFont(ofSize: 16), NSMutableAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.45)])
        
        attributedText.append(attributedSubTitle)
        
        let paragrapStyle = NSMutableParagraphStyle()
        paragrapStyle.lineSpacing = 15
        attributedText.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragrapStyle, range: NSMakeRange(0, attributedText.length))
        
        titleLabel.numberOfLines = 0
        titleLabel.attributedText = attributedText
        
    }
    
    func setupOrLabel() {
        orLabel.text = "or"
        orLabel.font = UIFont.boldSystemFont(ofSize: 16)
        orLabel.textColor = UIColor(white: 0, alpha: 0.5)
        orLabel.textAlignment = .center
    }
    
    func setupFacebookButton() {
        signInFacebookButton.setTitle("Sign in with Facebook", for: UIControl.State.normal)
        signInFacebookButton.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        signInFacebookButton.backgroundColor = UIColor(red: 58/255, green: 85/255, blue: 159/255, alpha: 1)
        signInFacebookButton.layer.cornerRadius = 5
        signInFacebookButton.clipsToBounds = true
        signInFacebookButton.setImage(UIImage(named: "facebook"), for: UIControl.State.normal)
        signInFacebookButton.imageView?.contentMode = .scaleAspectFit
        signInFacebookButton.tintColor = .white
        signInFacebookButton.imageEdgeInsets = UIEdgeInsets(top: 12, left: 0, bottom: 12, right: 20)
    }
    
    func setupGoogleButton() {
        signInGoogleButton.setTitle("Sign in with Google", for: UIControl.State.normal)
        signInGoogleButton.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        signInGoogleButton.backgroundColor = UIColor(red: 255/255, green: 85/255, blue: 0/255, alpha: 1)
        signInGoogleButton.layer.cornerRadius = 5
        signInGoogleButton.clipsToBounds = true
        signInGoogleButton.setImage(UIImage(named: "Google"), for: UIControl.State.normal)
        signInGoogleButton.imageView?.contentMode = .scaleAspectFit
        signInGoogleButton.tintColor = .white
        signInGoogleButton.imageEdgeInsets = UIEdgeInsets(top: 12, left: 0, bottom: 12, right: 20)
    }
    
    func setupTermsLabel() {
        let attributedTermsText = NSMutableAttributedString(string: "By clicking Create, a new account" , attributes: [NSMutableAttributedString.Key.font : UIFont.systemFont(ofSize: 14), NSMutableAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.5)
            ])
        
        let attributedSubTermsText = NSMutableAttributedString(string: "\nYou agree our terms of service" , attributes: [NSMutableAttributedString.Key.font : UIFont.systemFont(ofSize: 14), NSMutableAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.5)
            ])
        attributedTermsText.append(attributedSubTermsText)
        
        termsOfServiceLabel.attributedText = attributedTermsText
        termsOfServiceLabel.numberOfLines = 0
    }
    
    func setupCreateAccountButton() {
        
        createAccountButton.setTitle("Create a new account", for: UIControl.State.normal)
        createAccountButton.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        createAccountButton.backgroundColor = UIColor.black
        createAccountButton.layer.cornerRadius = 5
        createAccountButton.clipsToBounds = true
        
    }
    
}
