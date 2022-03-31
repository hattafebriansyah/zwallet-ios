//
//  LoginViewController.swift
//  ZWallet
//
//  Created by user217496 on 3/30/22.
//

import UIKit

class LoginViewController: UIViewController{

    @IBOutlet weak var viewLogin: UIView!
    
    //textfield
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    //img
    @IBOutlet weak var imgEmail: UIImageView!
    @IBOutlet weak var imgPassword: UIImageView!
    //underline
    @IBOutlet weak var underlineEmail: UIView!
    @IBOutlet weak var underlinePassword: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.viewLogin.layer.cornerRadius = 20
        //ngasih sebuah context
        emailTF.delegate = self
        passwordTF.delegate = self
        
//        self.imgEmail.image = UIImage (systemName: "envelope.fill")
//        self.imgPassword.image = UIImage(systemName: "lock.fill")
//        self.underlineEmail.backgroundColor = .blue
//        self.underlinePassword.backgroundColor = .blue
//
        
    }
    

}

extension LoginViewController: LoginView{
func showError() {
    print("eror")
}
}

extension LoginViewController :UITextFieldDelegate{
   
   
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("from did begin")
        if textField == emailTF {
            imgEmail.image = UIImage (systemName: "envelope.fill")
            underlineEmail.backgroundColor = .purple
        }
            else if textField == passwordTF {
            imgPassword.image = UIImage (systemName: "lock.fill")
            underlinePassword.backgroundColor = .purple
            }
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("from did end")
        if textField == emailTF && textField.text == ""{
            imgEmail.image = UIImage (systemName: "envelope")
            underlineEmail.backgroundColor = .gray
        } else if textField == passwordTF && textField.text == ""{
            imgPassword.image = UIImage (systemName: "lock")
            underlinePassword.backgroundColor = .gray
        }
    }
    
   
}

