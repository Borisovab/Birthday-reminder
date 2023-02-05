//
//  ViewController.swift
//  UIPickerView
//
//  Created by Александр Борисов on 21.12.2022.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {

    //MARK: - логин и пароль
    let profileLogin = "Aaa"
    let profilePassword = "aaa"

    var birthdayTitle: UILabel = {
        let label = UILabel()
        label.backgroundColor = #colorLiteral(red: 0.8753300309, green: 1, blue: 0.9265615344, alpha: 1)
        label.text = "Birthday Reminder"
        label.font = UIFont(name: UIFont.fontNames(forFamilyName: "Zapfino")[0], size: 27)
//        lable.font = UIFont.systemFont(ofSize: 25)
        label.textColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        label.textAlignment = .center
        label.layer.cornerRadius = 290
        label.alpha = 0.7
        label.layer.borderWidth = 4
        label.layer.borderColor = UIColor.systemBlue.withAlphaComponent(0.3).cgColor

        return label
    }()

    var loginTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = #colorLiteral(red: 0.9537760615, green: 0.9537760615, blue: 0.9537760615, alpha: 1)
        textField.placeholder = "  login: "
        textField.textAlignment = .center
        textField.layer.cornerRadius = 9
        textField.alpha = 0.7
        textField.layer.borderWidth = 4
        textField.layer.borderColor = UIColor.systemBlue.withAlphaComponent(0.3).cgColor
        return textField
    }()

    var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = #colorLiteral(red: 0.9537760615, green: 0.9537760615, blue: 0.9537760615, alpha: 1)
        textField.placeholder = "  password: "
        textField.isSecureTextEntry = true
        textField.textAlignment = .center
        textField.layer.cornerRadius = 9
        textField.alpha = 0.7
        textField.layer.borderWidth = 4
        textField.layer.borderColor = UIColor.systemBlue.withAlphaComponent(0.3).cgColor
        return textField
    }()

    var eyeButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "eye"), for: .normal)
        button.alpha = 0.5
        return button
    }()

    var enterButton: UIButton = {
        let button = UIButton()
        button.setTitle("Enter", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        button.layer.cornerRadius = 120
        button.layer.borderWidth = 4
        button.layer.borderColor = UIColor.init(red: 0.5, green: 0.9, blue: 1, alpha: 0.5).withAlphaComponent(0.6).cgColor
        return button
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.8753300309, green: 1, blue: 0.9265615344, alpha: 1)
        setupConstraints()
        enterButtonAction()
        eyeButtonIsOn()

    }


}

