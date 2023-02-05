//
//  ViewCell+constraints.swift
//  UIPickerView
//
//  Created by Александр Борисов on 26.12.2022.
//

import Foundation
import SnapKit

extension ViewCell {

    func setupConstraints() {

        [personImage, nameLabel, ageLabel].forEach { box in
            self.addSubview(box)
        }

        personImage.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.width.height.equalTo(70)
        }

        nameLabel.snp.makeConstraints { make in
            make.leading.equalTo(personImage.snp.trailing).offset(2)
            make.trailing.equalToSuperview()
            make.centerY.equalTo(personImage.snp.centerY).offset(-17)
            make.height.equalTo(40)
        }

        ageLabel.snp.makeConstraints { make in
            make.leading.equalTo(personImage.snp.trailing).offset(2)
            make.trailing.equalToSuperview()
            make.centerY.equalTo(personImage.snp.centerY).offset(17)
            make.height.equalTo(30)
        }
    }
}
