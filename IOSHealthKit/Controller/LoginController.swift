
//
//  LoginController.swift
//  IOSHealthKit
//
//  Created by Ahmed Jamal Yusuf on 09/02/2019.
//  Copyright © 2019 Ahmed Jamal Yusuf. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    let logoImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.image = #imageLiteral(resourceName: "logo_app")
        return iv
    }()
    
    lazy var emailContainerView: UIView = {
        let view = UIView()
        return view.textContainerView(view: view, #imageLiteral(resourceName: "ic_lock_outline_white_2x"), emailTextField)
    }()
    
    lazy var passwordContainerView: UIView = {
        let view = UIView()
        return view.textContainerView(view: view, #imageLiteral(resourceName: "ic_lock_outline_white_2x"), passwordTextField)
    }()
    
    lazy var emailTextField: UITextField = {
        let tf = UITextField()
        return tf.textField(withPlaceolder: "Email", isSecureTextEntry: false)
    }()
    
    lazy var passwordTextField: UITextField = {
        let tf = UITextField()
        return tf.textField(withPlaceolder: "Password", isSecureTextEntry: true)
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewComponents()

        // Do any additional setup after loading the view.
    }
    

    func configureViewComponents() {
        view.backgroundColor = UIColor.mainBlue()
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.barStyle = .black
        
        view.addSubview(logoImageView)
        logoImageView.anchor(top: view.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 60, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 150, height: 150)
        logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(emailContainerView)
        emailContainerView.anchor(top: logoImageView.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 24, paddingLeft: 32, paddingBottom: 0, paddingRight: 32, width: 0, height: 50)
        
        view.addSubview(passwordContainerView)
        passwordContainerView.anchor(top: emailContainerView.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 16, paddingLeft: 32, paddingBottom: 0, paddingRight: 32, width: 0, height: 50)
        
    }

    
    
    @IBAction func loginButtonPressed(_ sender: Any) {
    
        if emailTextField.text != " " && passwordTextField.text != " " {
            
            loginUser()
            
        }else{
            
        }
        
        
    }
    
    
    
    @IBAction func signUpButtonPressed(_ sender: Any) {
        if emailTextField.text != " " && passwordTextField.text != " " {
            
            loginUser()
            
        }else{
            
        }
    }
    
    
    
    @IBAction func backgroundTapped(_ sender: Any) {
    print("dismiss")
    }
    
    // helper function
    
    func loginUser() {
        print("logging in")
    }
    
    
    func SignUpUser() {
        print("Signing up")
    }
}