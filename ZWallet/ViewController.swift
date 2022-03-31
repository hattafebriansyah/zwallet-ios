//
//  ViewController.swift
//  ZWallet
//
//  Created by user217496 on 3/29/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var viewLogin: UIView!
    
    //textfield
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    //image
    @IBOutlet weak var imgEmail: UIImageView!
    @IBOutlet weak var imgPassword: UIImageView!
    
    //outline
    @IBOutlet weak var outlineEmail: UIView!
    @IBOutlet weak var outlinePassword: UIView!
    
    //button
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnForgotPassword: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.viewLogin.layer.cornerRadius = 15
        
        self.imgEmail.image = UIImage (systemName: "envelope.fill")
        self.imgPassword.image = UIImage(systemName: "lock.fill")
        self.outlineEmail.backgroundColor = .blue
        self.outlinePassword.backgroundColor = .blue
       
    }
    


}

