//
//  ForgotPasswordViewController.swift
//  MatchingApp
//
//  Created by 伊良波将好 on 2019/07/18.
//  Copyright © 2019 伊良波将好. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: UIViewController {
    
    @IBOutlet weak var emailContainerView: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var resetButton: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        
    }
    
    func setupUI() {
        setupEmailTextField()
        setupResetButton()
    }
    
    @IBAction func dismissAction(_ sender: Any) {
        
        navigationController?.popViewController(animated: true)
        
    }
    
}
