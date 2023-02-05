//
//  AddFriendViewController+constraints.swift
//  UIPickerView
//
//  Created by Александр Борисов on 22.12.2022.
//

import Foundation
import SnapKit

extension AddFriendViewController {

    func setupConstraints() {

        [addButton, cancelButton, personImage, changeImageButton, nameTF, dateTF, ageTF, genderTF, instagramNickNameTF].forEach { box in
            view.addSubview(box)
        }

        addButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(30)
            make.trailing.equalToSuperview().offset(-20)
            make.height.equalTo(40)
            make.width.equalTo(90)
        }

        cancelButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(30)
            make.leading.equalToSuperview().offset(20)
            make.height.equalTo(40)
            make.width.equalTo(90)
        }

        personImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(80)
            make.centerX.equalToSuperview()
            make.height.width.equalTo(180)
        }

        changeImageButton.snp.makeConstraints { make in
            make.top.equalTo(personImage.snp.bottom).offset(5)
            make.centerX.equalToSuperview()
            make.height.equalTo(40)
            make.width.equalTo(180)
        }

        nameTF.snp.makeConstraints { make in
            make.top.equalTo(changeImageButton.snp.bottom).offset(50)
            make.leading.trailing.equalToSuperview().inset(25)
            make.height.equalTo(40)
        }

        dateTF.snp.makeConstraints { make in
            make.top.equalTo(nameTF.snp.bottom).offset(30)
            make.leading.trailing.equalToSuperview().inset(25)
            make.height.equalTo(40)
        }

        ageTF.snp.makeConstraints { make in
            make.top.equalTo(dateTF.snp.bottom).offset(30)
            make.leading.trailing.equalToSuperview().inset(25)
            make.height.equalTo(40)
        }

        genderTF.snp.makeConstraints { make in
            make.top.equalTo(ageTF.snp.bottom).offset(30)
            make.leading.trailing.equalToSuperview().inset(25)
            make.height.equalTo(40)
        }

        instagramNickNameTF.snp.makeConstraints { make in
            make.top.equalTo(genderTF.snp.bottom).offset(30)
            make.leading.trailing.equalToSuperview().inset(25)
            make.height.equalTo(40)
        }




    }


}
