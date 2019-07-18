//
//  ForgotPasswordViewController+UI.swift
//  MatchingApp
//
//  Created by 伊良波将好 on 2019/07/18.
//  Copyright © 2019 伊良波将好. All rights reserved.
//

import UIKit

extension ForgotPasswordViewController {
    
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
    
    func setupResetButton() {
        
        resetButton.setTitle("Reset my Password", for: UIControl.State.normal)
        resetButton.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        resetButton.backgroundColor = UIColor.black
        resetButton.layer.cornerRadius = 5
        resetButton.clipsToBounds = true
        resetButton.setTitleColor(.white, for: UIControl.State.normal)
        
    }
    
}
