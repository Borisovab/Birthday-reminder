//
//  AddFriendVC+.swift
//  UIPickerView
//
//  Created by Александр Борисов on 23.12.2022.
//

import Foundation
import SnapKit


extension AddFriendViewController {

    func layerForImage() {
        personImage.layer.cornerRadius = personImage.bounds.width / 2
    }

    //TODO: DatePicker
    func setupDatePicker() {
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.locale = .init(identifier: "Russian")
    }

    //TODO: PickerView
    func pickersToTextFields() {
        ageTF.inputView = agePicker
        genderTF.inputView = genderPicker
    }

    //TODO: dataSource & delegate
    func delegateAndDataSours() {
        agePicker.dataSource = self
        agePicker.delegate = self
        genderPicker.dataSource = self
        genderPicker.delegate = self

        // теги для dataSource и delegate
        agePicker.tag = 0
        genderPicker.tag = 1
    }


    //MARK: - Дата (создание toolbar и кнопки done)
    func createDatePicker() {

        //создание toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()

        //создание bar button
        let doneButton = UIBarButtonItem(
            barButtonSystemItem: .done,
            target: nil,
            action: #selector(doneDateAction))

        toolbar.setItems([doneButton], animated: true)

        //добавляемtoolbar
        dateTF.inputAccessoryView = toolbar

        //присвоение picker to textField
        dateTF.inputView = datePicker

        //задаем вид для date picker
        datePicker.datePickerMode = .date
    }

    @objc func doneDateAction() {
        //создаем форматер для получения даты
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .none
        formatter.locale = .init(identifier: "Russian")

        dateTF.text = formatter.string(from: datePicker.date)

        //TODO: передаю datePicker.date на BirthdayViewController через NotificationCenter
        let date = datePicker.date
        NotificationCenter.default.post(name: Notification.Name("dateFromThirdToSecond"), object: date)


        view.endEditing(true)
    }

    //MARK: - создание toolbar и кнопки done для picker
    func createPicker() {

        let toolbar = UIToolbar()
        toolbar.sizeToFit()

        let doneButton = UIBarButtonItem(
            barButtonSystemItem: .done,
            target: nil,
            action: #selector(doneAction))

        toolbar.setItems([doneButton], animated: true)

        ageTF.inputAccessoryView = toolbar
        genderTF.inputAccessoryView = toolbar
    }

    @objc func doneAction() {
        view.endEditing(true)
    }

    //MARK: - alert для instagramNickNameTF
    func instagramNickNameAction() {
        instagramNickNameTF.addTarget(
            self,
            action: #selector(instagramAlertAction),
            for: .allEditingEvents)
    }

    @objc func instagramAlertAction() {
        let alert = UIAlertController(
            title: "Введите username Instagram",
            message: "",
            preferredStyle: .alert)

        alert.addAction(UIAlertAction(
            title: "Ok",
            style: .default,
            handler: { (_) in
            let textField = alert.textFields?[0].text ?? ""
            self.instagramNickNameTF.text = textField
        }))

        alert.addAction(UIAlertAction(
            title: "Cancel",
            style: .cancel,
            handler: nil))

        alert.addTextField(configurationHandler: nil)
        alert.textFields?[0].placeholder = "например instaname2002"
        present(alert, animated: true, completion: nil)
    }

    //MARK: - кнопка cancelButton
    func cancelButtonAction() {
        cancelButton.addTarget(
            self,
            action: #selector(cancelAction),
            for: .touchUpInside)
    }

    @objc func cancelAction() {
        dismiss(animated: true, completion: nil)
    }

    //MARK: - кнопка addButton
    func addButtonAction() {
        addButton.addTarget(
            self,
            action: #selector(addAction),
            for: .touchUpInside)
    }


    @objc func addAction() {
        //добавляю в массив заполненные данные и передаю на второй экран
        let people = ViewCell()
        people.nameLabel.text = nameTF.text
        people.ageLabel.text = dateTF.text
        people.personImage.image = nil

        peopleArray.append(people)

        //TODO: передаю peopleArray через NotificationCenter
        NotificationCenter.default.post(name: Notification.Name("peopleArrayFromThirdToSecond"), object: peopleArray)

        dismiss(animated: true, completion: nil)
    }

}
