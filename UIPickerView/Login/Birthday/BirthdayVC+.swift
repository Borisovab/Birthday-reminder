//
//  BirthdayVC+.swift
//  UIPickerView
//
//  Created by Александр Борисов on 23.12.2022.
//

import Foundation
import SnapKit

extension BirthdayViewController {

    //TODO: создание основного стека
    func configureStackView() {
        view.addSubview(stackView)
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 0

        getNotifications()
        
    }

    //TODO: через жест по кнопке сделал переход на третий экран (AddFriendViewController)
    func buttonGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(onTap))
        self.addPersonButton.addGestureRecognizer(tapGesture)
    }

    @objc func onTap() {
        let addFriendsVC: UIViewController = AddFriendViewController()
        addFriendsVC.modalPresentationStyle = .fullScreen
        self.present(addFriendsVC, animated: true)
    }

    //TODO: принимаю информацию через NotificationCenter от AddFriendViewController
    func getNotifications() {
        //массив элементов для стека
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(getArray(_:)),
            name: Notification.Name("peopleArrayFromThirdToSecond"),
            object: nil)

        // дата для вычисления количества дней до ДР
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(getDate(_:)),
            name: Notification.Name("dateFromThirdToSecond"),
            object: nil)
    }

    //от NotificationCenter прием имени
    @objc func getArray(_ notification: Notification) {
        guard let peopleArray = notification.object as? [ViewCell]
        else { return }

        peopleDataArray = peopleArray

        //добавляю в элементы вью данные с третьего экрана
        for i in peopleDataArray {
            let view = ViewCell()

            view.nameLabel.text = i.nameLabel.text
            view.ageLabel.text = tempDate

            let tempName = view.nameLabel.text

            //если нет имени, картинка не добавляется
            if tempName != nil && tempName != "" {
                view.personImage.image = UIImage(systemName: "person.circle.fill")
            }

            view.layer.borderWidth = 1
            view.layer.borderColor = UIColor.gray.withAlphaComponent(0.3).cgColor
            stackView.insertArrangedSubview(view, at: 0)

            //если массив вложенных в стек вьюх больше 8, последний скрываем и удаляем
            deleteViewFromStackView()
        }

    }

    func deleteViewFromStackView() {

        let theArray = stackView.arrangedSubviews

        if theArray.count < 8 {
            print("в стеке theArray = \(theArray.count) элементов")
        } else {
            stackView.arrangedSubviews.last?.isHidden = true
            guard let oldView = stackView.arrangedSubviews.last else { return }
            stackView.removeArrangedSubview(oldView)
            oldView.removeFromSuperview()

            self.view.layoutIfNeeded()
        }
    }

    //от NotificationCenter прием даты
    @objc func getDate(_ notification: Notification) {
        guard let getedDate = notification.object as? Date
        else { return }

        let daysUntilBirthday = daysUntil(bitrhday: getedDate)

        //склоняю слово "день" в соответствии с цифрой
        switch (daysUntilBirthday % 10) {
        case 1:
            return tempDate = "до дня рождения осталcя \(daysUntilBirthday) день"
        case 2:
            return tempDate = "до дня рождения осталось \(daysUntilBirthday) дня"
        case 3:
            return tempDate = "до дня рождения осталось \(daysUntilBirthday) дня"
        case 4:
            return tempDate = "до дня рождения осталось \(daysUntilBirthday) дня"
        default:
            return tempDate = "до дня рождения осталось \(daysUntilBirthday) дней"
        }
    }

    //    TODO: вычисление дней до ДР от текущей даты
    func daysUntil(bitrhday: Date) -> Int {
        let cal = Calendar.current
        let today = cal.startOfDay(for: Date())
        let date = cal.startOfDay(for: bitrhday)
        let components = cal.dateComponents([.day, .month], from: date)
        let nextDate = cal.nextDate(
            after: today,
            matching: components,
            matchingPolicy: .nextTimePreservingSmallerComponents)
        return cal.dateComponents([.day], from: today, to: nextDate ?? today).day ?? 0
    }

    //    TODO: заранее сосздаю стек из пустых экземпляров вью
    func temporaryStack() {

        for _ in stride(from: 8, through: 1, by: -1) {
            let temp = ViewCell()
            temp.nameLabel.text = nil
            temp.ageLabel.text = nil
            temp.personImage.image = nil
            temp.layer.borderWidth = 1
            temp.layer.borderColor = UIColor.gray.withAlphaComponent(0.3).cgColor
            stackView.addArrangedSubview(temp)
        }
    }
}
