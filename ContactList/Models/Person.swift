//
//  Person.swift
//  ContactList
//
//  Created by Evgeni Glushko on 16.12.23.
//

struct Person {
    let firstName: String
    let lastName: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        
        while persons.count < DataStore().firstNames.count {
            let randomPerson = Person(
                firstName: DataStore().firstNames.randomElement() ?? "",
                lastName: DataStore().lastNames.randomElement() ?? "",
                email: DataStore().emails.randomElement() ?? "",
                phone: DataStore().phones.randomElement() ?? ""
            )
        
            addUniquePerson(randomPerson, to: &persons)
        }

        return persons
    }
    
    private static func addUniquePerson(_ person: Person, to target: inout [Person]) {
        if !target.contains(person) {
            target.append(person)
        }
    }
}

// MARK: - Equatable
extension Person: Equatable {
    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.firstName == rhs.firstName && lhs.lastName == rhs.lastName
    }
}
