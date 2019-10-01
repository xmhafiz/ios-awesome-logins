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
        
        loginButton.addTarget(self, action: #selector(CleanBackgroundViewController.dismissThisController), for: UIControl.Event.touchUpInside)
    }
    
    @objc func dismissThisController() {
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
        self.attributedPlaceholder = NSAttributedString(string: self.placeholder!, attributes: convertToOptionalNSAttributedStringKeyDictionary([convertFromNSAttributedStringKey(NSAttributedString.Key.foregroundColor): UIColor.lightGray]))
    }
}

extension UIButton {
    func rounded() {
        
        // set rounded and white border
        self.layer.cornerRadius = 25
        self.clipsToBounds = true
    }
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToOptionalNSAttributedStringKeyDictionary(_ input: [String: Any]?) -> [NSAttributedString.Key: Any]? {
	guard let input = input else { return nil }
	return Dictionary(uniqueKeysWithValues: input.map { key, value in (NSAttributedString.Key(rawValue: key), value)})
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertFromNSAttributedStringKey(_ input: NSAttributedString.Key) -> String {
	return input.rawValue
}
