//
//  LoginViewController+constraints.swift
//  UIPickerView
//
//  Created by Александр Борисов on 21.12.2022.
//

import Foundation
import SnapKit


extension LoginViewController {

    func setupConstraints() {

        [birthdayTitle, loginTextField, passwordTextField, eyeButton, enterButton].forEach { box in
            view.addSubview(box)
        }

        birthdayTitle.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(100)
            make.leading.trailing.equalToSuperview().inset(50)
            make.height.equalTo(150)
        }

        loginTextField.snp.makeConstraints { make in
            make.top.equalTo(birthdayTitle.snp.bottom).offset(150)
            make.centerX.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(40)
        }

        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(loginTextField.snp.bottom).offset(25)
            make.centerX.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(40)
        }

        eyeButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.top)
            make.trailing.equalTo(passwordTextField.snp.trailing)
            make.height.equalTo(40)
            make.width.equalTo(50)
        }

        enterButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(150)
            make.centerX.equalToSuperview()
            make.width.equalTo(350)
            make.height.equalTo(60)
        }



    }





}
