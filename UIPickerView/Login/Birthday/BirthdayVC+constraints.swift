//
//  BirthdayViewController+constraints.swift
//  UIPickerView
//
//  Created by Александр Борисов on 22.12.2022.
//

import Foundation
import SnapKit

extension BirthdayViewController {

    func setupConstraints() {
        [myTitle, addPersonButton, stackView].forEach { box in
            view.addSubview(box)
        }
        myTitle.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(0)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(220)
        }

        stackView.snp.makeConstraints { make in
            make.top.equalTo(myTitle.snp.bottom)
            make.leading.trailing.equalToSuperview()
            make.bottom.equalToSuperview().offset(-45)
        }

        addPersonButton.snp.makeConstraints { make in
            make.centerX.equalTo(myTitle.snp.centerX).offset(170)
            make.centerY.equalTo(myTitle.snp.centerY).offset(80)
            make.height.width.equalTo(40)
        }



        
    }
}
