//
//  LoginViewController.swift
//  Example
//
//  Created by Natthida Kritveeranant on 30/4/2565 BE.
//

import UIKit

class LoginViewController: UIViewController {
    private let IDField = UITextField()
    private let PWField = UITextField()
    private let LoginButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        configureViews()
    }
    
    private func configureViews() {
        view.backgroundColor = .systemBackground
        
        IDField.placeholder = "ID"
        
        PWField.placeholder = "Password"
        
        LoginButton.setTitle("Login", for: .normal)
        LoginButton.setTitleColor(.black, for: .normal)
        LoginButton.addTarget(self, action: #selector(didTapLoginButton), for: .touchUpInside)
        
        

        // MARK: SubView
        view.addSubview(IDField)
        view.addSubview(PWField)
        view.addSubview(LoginButton)
        
        // MARK: Layout
        IDField.translatesAutoresizingMaskIntoConstraints = false
        PWField.translatesAutoresizingMaskIntoConstraints = false
        LoginButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate(
            [
                IDField.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 16),
                IDField.leftAnchor.constraint(equalTo: view.layoutMarginsGuide.leftAnchor, constant: 16),
                IDField.rightAnchor.constraint(equalTo: view.layoutMarginsGuide.rightAnchor, constant: -16),
                
                PWField.topAnchor.constraint(equalTo: IDField.layoutMarginsGuide.topAnchor, constant: 16),
                PWField.leftAnchor.constraint(equalTo: view.layoutMarginsGuide.leftAnchor, constant: 16),
                PWField.rightAnchor.constraint(equalTo: view.layoutMarginsGuide.rightAnchor, constant: -16),
                
                LoginButton.topAnchor.constraint(equalTo: PWField.layoutMarginsGuide.topAnchor, constant: 16),
                LoginButton.leftAnchor.constraint(equalTo: view.layoutMarginsGuide.leftAnchor, constant: 16),
                LoginButton.rightAnchor.constraint(equalTo: view.layoutMarginsGuide.rightAnchor, constant: -16),
            ]
        )
        
    }
    
    @objc
    private func LoginClick(_ button: UIButton){
        let loginDoneController = LoginDoneController()
        self.navigationController?.pushViewController(loginDoneController, animated: true)
    }
    
    @objc
    private func didTapLoginButton(){
        let loginDoneController = LoginDoneController()
        loginDoneController.labelID.text = IDField.text
        self.navigationController?.pushViewController(loginDoneController, animated: true)
    }

}
