//
//  ViewController.swift
//  Example
//
//  Created by Natthida Kritveeranant on 29/4/2565 BE.
//

import UIKit

class ViewController: UIViewController {
    private let textField = UITextField()
    private let button = UIButton()
    private let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureViews()
    }

    private func configureViews() {
        view.backgroundColor = .systemBackground

        textField.placeholder = "What is your name?"
        
        button.setTitle("Click Me", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
        
        label.text = ""
        label.textAlignment = .center
        
        // MARK: Subviews
        view.addSubview(textField)
        view.addSubview(button)
        view.addSubview(label)
        
        // MARK: Layout
        textField.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate(
            [
                textField.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 16),
                textField.leftAnchor.constraint(equalTo: view.layoutMarginsGuide.leftAnchor, constant: 16),
                textField.rightAnchor.constraint(equalTo: view.layoutMarginsGuide.rightAnchor, constant: -16),
                
                button.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 16),
                button.leftAnchor.constraint(equalTo: view.layoutMarginsGuide.leftAnchor, constant: 16),
                button.rightAnchor.constraint(equalTo: view.layoutMarginsGuide.rightAnchor, constant: -16),
                
                label.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 16),
                label.leftAnchor.constraint(equalTo: view.layoutMarginsGuide.leftAnchor),
                label.rightAnchor.constraint(equalTo: view.layoutMarginsGuide.rightAnchor)
            ]
        )
    }
    
    @objc
    private func onClick(_ button: UIButton) {
        label.text = "Hello, \(textField.text ?? "")"
        print("Button clicked!!")
    }
}


