//
//  AddFriendViewController.swift
//  UIPickerView
//
//  Created by Александр Борисов on 22.12.2022.
//

import UIKit
import SnapKit

class AddFriendViewController: UIViewController {

    var addButton: UIButton = {
        let button = UIButton()
        button.setTitle("Добавить", for: .normal)
        button.setTitleColor(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .bold)
        return button
    }()

    var cancelButton: UIButton = {
        let button = UIButton()
        button.setTitle("Отмена", for: .normal)
        button.setTitleColor(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .bold)
        return button
    }()

    var personImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "person.circle.fill")
        return image
    }()

    var changeImageButton: UIButton = {
        let button = UIButton()
        button.setTitle("Изменить фото", for: .normal)
        button.setTitleColor(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .bold)
        return button
    }()

    var nameTF: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = #colorLiteral(red: 0.9537760615, green: 0.9537760615, blue: 0.9537760615, alpha: 1)
        textField.placeholder = " Введите имя: "
        textField.layer.sublayerTransform = CATransform3DMakeTranslation(15, 0, 0)
        textField.font = UIFont.systemFont(ofSize: 18)
        textField.alpha = 0.7
        textField.layer.borderWidth = 4
        textField.layer.borderColor = UIColor.systemBlue.withAlphaComponent(0.3).cgColor
        return textField
    }()

    var dateTF: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = #colorLiteral(red: 0.9537760615, green: 0.9537760615, blue: 0.9537760615, alpha: 1)
        textField.placeholder = " Введите дату: "
        textField.layer.sublayerTransform = CATransform3DMakeTranslation(15, 0, 0)
        textField.font = UIFont.systemFont(ofSize: 18)
        textField.alpha = 0.7
        textField.layer.borderWidth = 4
        textField.layer.borderColor = UIColor.systemBlue.withAlphaComponent(0.3).cgColor
        return textField
    }()

    var ageTF: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = #colorLiteral(red: 0.9537760615, green: 0.9537760615, blue: 0.9537760615, alpha: 1)
        textField.placeholder = " Добавить возраст "
        textField.layer.sublayerTransform = CATransform3DMakeTranslation(15, 0, 0)
        textField.font = UIFont.systemFont(ofSize: 18)
        textField.alpha = 0.7
        textField.layer.borderWidth = 4
        textField.layer.borderColor = UIColor.systemBlue.withAlphaComponent(0.3).cgColor
        return textField
    }()

    var genderTF: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = #colorLiteral(red: 0.9537760615, green: 0.9537760615, blue: 0.9537760615, alpha: 1)
        textField.placeholder = " Добавить пол "
        textField.layer.sublayerTransform = CATransform3DMakeTranslation(15, 0, 0)
        textField.font = UIFont.systemFont(ofSize: 18)
        textField.alpha = 0.7
        textField.layer.borderWidth = 4
        textField.layer.borderColor = UIColor.systemBlue.withAlphaComponent(0.3).cgColor
        return textField
    }()

    var instagramNickNameTF: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = #colorLiteral(red: 0.9537760615, green: 0.9537760615, blue: 0.9537760615, alpha: 1)
        textField.placeholder = " Добавить instagram "
        textField.layer.sublayerTransform = CATransform3DMakeTranslation(15, 0, 0)
        textField.font = UIFont.systemFont(ofSize: 18)
        textField.alpha = 0.7
        textField.layer.borderWidth = 4
        textField.layer.borderColor = UIColor.systemBlue.withAlphaComponent(0.3).cgColor
        return textField
    }()

    var datePicker: UIDatePicker = {
        let picker = UIDatePicker()
        return picker
    }()

    var agePicker: UIPickerView = {
        let picker = UIPickerView()
        return picker
    }()

    var genderPicker: UIPickerView = {
        let picker = UIPickerView()
        return picker
    }()

    let gender = ["Male", "Famale"]

    var peopleArray:[ViewCell] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.8753300309, green: 1, blue: 0.9265615344, alpha: 1)
        setupConstraints()
        setupDatePicker()
        createDatePicker()
        createPicker()
        pickersToTextFields()
        instagramNickNameAction()

        cancelButtonAction()
        addButtonAction()

        delegateAndDataSours()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        layerForImage()
    }








}

