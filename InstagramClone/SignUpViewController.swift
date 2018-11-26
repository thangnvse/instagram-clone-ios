//
//  SignUpViewController.swift
//  InstagramClone
//
//  Created by toanpq1.dtl on 11/21/18.
//  Copyright © 2018 toanpq1.dtl. All rights reserved.
//

import UIKit
import FirebaseAuth
class SignUpViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    @IBAction func dismiss_onClick(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.backgroundColor = UIColor.clear
        emailTextField.tintColor = UIColor.white
        emailTextField.textColor = UIColor.white
        emailTextField.attributedPlaceholder = NSAttributedString(string: emailTextField.placeholder!, attributes: [NSAttributedString.Key.foregroundColor: UIColor(white: 1.0, alpha: 0.6)])
        let bottomLayerEmail = CALayer()
        bottomLayerEmail.frame = CGRect(x: 0, y: 29, width: 1000, height: 0.6)
        bottomLayerEmail.backgroundColor = UIColor.white.cgColor
        emailTextField.layer.addSublayer(bottomLayerEmail)
        
        usernameTextField.backgroundColor = UIColor.clear
        usernameTextField.tintColor = UIColor.white
        usernameTextField.textColor = UIColor.white
        usernameTextField.attributedPlaceholder = NSAttributedString(string: usernameTextField.placeholder!, attributes: [NSAttributedString.Key.foregroundColor: UIColor(white: 1.0, alpha: 0.6)])
        let bottomLayerUser = CALayer()
        bottomLayerUser.frame = CGRect(x: 0, y: 29, width: 1000, height: 0.6)
        bottomLayerUser.backgroundColor = UIColor.white.cgColor
        usernameTextField.layer.addSublayer(bottomLayerUser)
        
        passTextField.backgroundColor = UIColor.clear
        passTextField.tintColor = UIColor.white
        passTextField.textColor = UIColor.white
        passTextField.attributedPlaceholder = NSAttributedString(string: passTextField.placeholder!, attributes: [NSAttributedString.Key.foregroundColor: UIColor(white: 1.0, alpha: 0.6)])
        let bottomLayerPass = CALayer()
        bottomLayerPass.frame = CGRect(x: 0, y: 29, width: 1000, height: 0.6)
        bottomLayerPass.backgroundColor = UIColor.white.cgColor
        passTextField.layer.addSublayer(bottomLayerPass)
    }
    

    @IBAction func signUpBtn_TouchUpInside(_ sender: Any) {
        Auth.auth().createUser(withEmail: "user1@gmail.com", password: "123456") { (authResult, error) in
            guard let user = authResult?.user else { return }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
