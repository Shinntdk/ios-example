//
//  LoginDoneController.swift
//  Example
//
//  Created by Natthida Kritveeranant on 30/4/2565 BE.
//

import UIKit

class LoginDoneController: UIViewController {
    
    private let label = UILabel()
    let labelID = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()

        configureView()
    }
    
    private func configureView() {
        view.backgroundColor = .systemBackground
        
        label.text = "Login Success"
        label.textAlignment = .center
        
        labelID.textAlignment = .center
        labelID.textColor = .black
        
        // MARK: SubView
        view.addSubview(label)
        view.addSubview(labelID)
        
        // MARK: Layout
        label.translatesAutoresizingMaskIntoConstraints = false
        labelID.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate(
            [
                label.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 16),
                label.rightAnchor.constraint(equalTo: view.layoutMarginsGuide.rightAnchor, constant: -16),
                label.leftAnchor.constraint(equalTo: view.layoutMarginsGuide.leftAnchor, constant: 16),
                
                labelID.topAnchor.constraint(equalTo: label.layoutMarginsGuide.topAnchor, constant: 16),
                labelID.rightAnchor.constraint(equalTo: view.layoutMarginsGuide.rightAnchor, constant: -16),
                labelID.leftAnchor.constraint(equalTo: view.layoutMarginsGuide.leftAnchor, constant: 16),
            ]
        )  
    }

}
