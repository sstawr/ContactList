//
//  Person.swift
//  ContactList
//
//  Created by Evgeni Glushko on 16.12.23.
//

struct Person: Hashable {
    let firstName: String
    let lastName: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        let firstNames = getRandomUniqueData(from: DataStore().firstNames)
        let lastNames = getRandomUniqueData(from: DataStore().lastNames)
        let emails = getRandomUniqueData(from: DataStore().emails)
        let phones = getRandomUniqueData(from: DataStore().phones)
        
        for (index, firstName) in firstNames.enumerated() {
            let person = Person(
                firstName: firstName,
                lastName: lastNames[index],
                email: emails[index],
                phone: phones[index]
            )
            persons.append(person)
        }
        
        return persons
    }
}

extension Person {
    private static func getRandomUniqueData(from source: [String]) -> [String] {
        var randomUniqueData: [String] = []
        
        while randomUniqueData.count < source.count {
            let randomElement = source.randomElement()
            if !randomUniqueData.contains(randomElement ?? ""){
                randomUniqueData.append(randomElement ?? "")
            }
        }
            
        return randomUniqueData
    }
}

