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
        
        while persons.count < DataStore().firstNames.count {
            let randomPerson = createRandomPerson()
            if !persons.contains(randomPerson) {
                persons.append(randomPerson)
            }
        }

        return persons
    }
    
    private static func createRandomPerson() -> Person {
        Person(
            firstName: DataStore().firstNames.randomElement() ?? "",
            lastName: DataStore().lastNames.randomElement() ?? "",
            email: DataStore().emails.randomElement() ?? "",
            phone: DataStore().phones.randomElement() ?? ""
        )
    }
}

// MARK: - Equatable
extension Person: Equatable {
    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.firstName == rhs.firstName && lhs.lastName == rhs.lastName
    }
}
