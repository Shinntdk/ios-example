import UIKit

class ViewController: UIViewController {
    private let textField = UITextField()
    private let button = UIButton()
    private let label = UILabel()
    private let loginButton = UIButton()
    private let amiiboButton = UIButton()
    
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
        
        loginButton.setTitle("go to login", for: .normal)
        loginButton.setTitleColor(.brown, for: .normal)
        loginButton.addTarget(self, action: #selector(loginClick), for: .touchUpInside)
        
        amiiboButton.setTitle("go to Amiibo List", for: .normal)
        amiiboButton.setTitleColor(.black, for: .normal)
        amiiboButton.addTarget(self, action: #selector(amiiboClick), for: .touchUpInside)
        
        // MARK: Subviews
        view.addSubview(textField)
        view.addSubview(button)
        view.addSubview(label)
        view.addSubview(loginButton)
        view.addSubview(amiiboButton)
        
        // MARK: Layout
        textField.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        amiiboButton.translatesAutoresizingMaskIntoConstraints = false
        
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
                label.rightAnchor.constraint(equalTo: view.layoutMarginsGuide.rightAnchor),
                
                loginButton.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 16),
                loginButton.leftAnchor.constraint(equalTo: view.layoutMarginsGuide.leftAnchor),
                loginButton.rightAnchor.constraint(equalTo: view.layoutMarginsGuide.rightAnchor),
                
                amiiboButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 16),
                amiiboButton.leftAnchor.constraint(equalTo: view.layoutMarginsGuide.leftAnchor),
                amiiboButton.rightAnchor.constraint(equalTo: view.layoutMarginsGuide.rightAnchor),
            ]
        )
    }
    
    @objc
    private func onClick(_ button: UIButton) {
        label.text = "Hello, \(textField.text ?? "")"
        print("Button clicked!!")
    }
    
    @objc
    private func loginClick(_ button: UIButton) {
        let loginViewController = LoginViewController()
        self.navigationController?.pushViewController(loginViewController, animated: true)
    }
    
    @objc
    private func amiiboClick(_ button: UIButton) {
        let tableViewController = TableViewController()
        self.navigationController?.pushViewController(tableViewController, animated: true)
    }
}


