//
//  Person.swift
//  2.7HW
//
//  Created by Александр on 17.07.2022.
//

struct Person {
    let firstName: String
    let secondName: String
    let email: String
    let phone: String
 
    var fullName: String {
        "\(firstName) \(secondName)"
    }
    
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        
        let firstNames = DataManger.getDataManagerData.firstNames.shuffled()
        let secondNames = DataManger.getDataManagerData.secondNames.shuffled()
        let emails = DataManger.getDataManagerData.emails.shuffled()
        let phones = DataManger.getDataManagerData.phones.shuffled()
        
        let countOfIterations = min(
            firstNames.count - 1,
            secondNames.count - 1,
            emails.count - 1,
            phones.count - 1
        )
        for index in (0...countOfIterations) {
            persons.append(Person(
                            firstName: firstNames[index],
                            secondName: secondNames[index],
                            email: emails[index],
                            phone: phones[index])
                            )
        }
        return persons
    }
}
