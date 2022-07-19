//
//  DataManager.swift
//  2.7HW
//
//  Created by Александр on 17.07.2022.
//

import Foundation

class DataManger {
    static let getDataManagerData = DataManger()
    var firstNames = [
        "John", "Steve", "Carl",
        "Bob", "Irina", "Anna",
        "Rachele", "Leonardo", "Victoria"
    ]
    var secondNames = [
        "Williams", "Peters", "Da Vinci",
        "Carlson", "Gibson", "Martin",
        "Jordan", "Jackson", "Davis"
    ]
    var emails = [
        "111@mail.ru", "222@mail.ru", "333@mail.ru",
        "444@mail.ru", "555@mail.ru", "666@mail.ru",
        "777@mail.ru", "888@mail.ru", "999@mail.ru"
    ]
    var phones = [
        "01223111111", "01223222222", "01223333333",
        "01223444444", "01223555555", "01223666666",
        "01223777777", "01223888888", "01223999999"
    ]
//    init(firstNames: [String], secondNames: [String], emails: [String], phones: [String]) {
//        self.firstNames = firstNames
//        self.secondNames = secondNames
//        self.emails = emails
//        self.phones = phones
//    }
    private init() {}
}

