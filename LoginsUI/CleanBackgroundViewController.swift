//
//  WithBgViewController.swift
//  LoginsUI
//
//  Created by Hafiz on 26/10/2016.
//  Copyright © 2016 Hafiz. All rights reserved.
//

import UIKit

class CleanBackgroundViewController: UIViewController {

    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // custom ui
        emailTextField.rounded()
        passwordTextField.rounded()
        loginButton.rounded()
        
        loginButton.addTarget(self, action: #selector(CleanBackgroundViewController.dismissThisController), for: UIControlEvents.touchUpInside)
    }
    
    func dismissThisController() {
        self.dismiss(animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension UITextField {
    func rounded() {
        
        // set rounded and white border
        self.layer.cornerRadius = 25
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.borderWidth = 1
        
        // set placeholder to light gray
        self.attributedPlaceholder = NSAttributedString(string: self.placeholder!, attributes: [NSForegroundColorAttributeName: UIColor.lightGray])
    }
}

extension UIButton {
    func rounded() {
        
        // set rounded and white border
        self.layer.cornerRadius = 25
        self.clipsToBounds = true
    }
}
