//
//  ViewCell.swift
//  UIPickerView
//
//  Created by Александр Борисов on 26.12.2022.
//

import Foundation
import SnapKit

class ViewCell: UIView {

    var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Drobidon"
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        label.textAlignment = .left
        return label
    }()

    var ageLabel: UILabel = {
        let label = UILabel()
        label.text = "10 марта исполнится 25 лет"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        label.textAlignment = .left
        label.alpha = 0.7
        return label
    }()

    var personImage: UIImageView = {
        let image = UIImageView()
//        image.image = UIImage(systemName: "person.circle.fill")

        return image
    }()


    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    init(frame: CGRect, userName: String?, userage: String?, userImage: String?) {
        self.nameLabel.text = userName
        self.ageLabel.text = userage
//        self.personImage.image = UIImage(systemName: userImage ?? "")
        super.init(frame: frame)

        setupConstraints()
    }

    convenience init(userName: String, userage: String, userImage: String) {
        self.init(frame: CGRect.zero, userName: userName, userage: userage, userImage: userImage)
        setupConstraints()

    }

    //использую этот пустой convenience init
    convenience init() {
        self.init(frame: CGRect.zero, userName: nil, userage: nil, userImage: nil)

        setupConstraints()
    }
}

