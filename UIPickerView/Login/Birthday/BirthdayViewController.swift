//
//  BirthdayViewController.swift
//  UIPickerView
//
//  Created by Александр Борисов on 21.12.2022.
//

import UIKit
import SnapKit

class BirthdayViewController: UIViewController {

    var myTitle: UILabel = {
        let label = UILabel()
        label.backgroundColor = #colorLiteral(red: 0.6151385307, green: 1, blue: 0.9630826116, alpha: 1)
        label.numberOfLines = 2
        label.text = "Friends of mine \n Birthdays"
        label.font = UIFont(name: UIFont.fontNames(forFamilyName: "Zapfino")[0], size: 20)
        label.textColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        label.textAlignment = .center
        label.layer.sublayerTransform = CATransform3DMakeTranslation(0, 50, 0)
        label.layer.borderWidth = 1
        label.layer.borderColor = UIColor.gray.withAlphaComponent(0.3).cgColor
        return label
    }()

    var addPersonButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "person.crop.circle.fill.badge.plus"), for: .normal)
        return button
    }()

    let stackView = UIStackView()

    var peopleDataArray:[ViewCell] = []
    var tempDate = ""


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.8753300309, green: 1, blue: 0.9265615344, alpha: 1)
        setupConstraints()
        buttonGesture()

        temporaryStack()

        configureStackView()


    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

    }
}
