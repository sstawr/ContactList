//
//  DataStore.swift
//  ContactList
//
//  Created by Evgeni Glushko on 16.12.23.
//

final class DataStore {
    let firstNames: [String]
    let lastNames: [String]
    let emails: [String]
    let phones: [String]
    
    init() {
        firstNames = [
            "John",
            "Jane",
            "Alice",
            "Bob",
            "Charlie",
            "Diana",
            "Edward",
            "Fiona",
            "George",
            "Helen"
        ]
        lastNames = [
            "Doe",
            "Smith",
            "Johnson",
            "Williams",
            "Brown",
            "Taylor",
            "Anderson",
            "Clark",
            "Wright",
            "Davis"
        ]
        emails = [
            "random1@gmail.com",
            "user123@gmail.com",
            "example.email@gmail.com",
            "testaccount@gmail.com",
            "email42@gmail.com",
            "randomuser@gmail.com",
            "temporary.email@gmail.com",
            "newuser@gmail.com",
            "demo.email@gmail.com",
            "anonymous.email@gmail.com"
        ]
        phones = [
            "+1 (123) 456-7890",
            "+1 (456) 789-0123",
            "+1 (789) 012-3456",
            "+1 (234) 567-8901",
            "+1 (567) 890-1234",
            "+1 (890) 123-4567",
            "+1 (345) 678-9012",
            "+1 (678) 901-2345",
            "+1 (901) 234-5678",
            "+1 (012) 345-6789"
        ]
    }
}
