//
//  Person.swift
//  ContactList_HW
//
//  Created by Dmitry Parhomenko on 15.12.2023.
//

import Foundation

final class DataStore {
    
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    init(name: String, surname: String, email: String, phoneNumber: String) {
        self.name = name
        self.surname = surname
        self.email = email
        self.phoneNumber = phoneNumber
    }
    
}

    var names = [
        "John",
        "Aaron",
        "Tim",
        "Ted",
        "Steven",
        "Nicola",
        "Bruse",
        "Allan",
        "Carl",
        "Sharon"
    ]

    var surnames = [
        "Smith",
        "Dow",
        "Isaacson",
        "Pennyworth",
        "Jankin",
        "Williams",
        "Black",
        "Butler",
        "Robertson",
        "Murphy"
    ]
    
    var phoneNumber = [
        "89128088801",
        "89121236543",
        "89128088802",
        "89045055801",
        "89046784804",
        "89128084721",
        "89048099991",
        "89047865432",
        "89122853015",
        "89120101023"
    ]

    var email = [
        "qwerty@mail.ru",
        "asd@mail.ru",
        "rweq01@mail.ru",
        "ui02@mail.ru",
        "swbook39@mail.ru",
        "xiaomy@mail.ru",
        "clip@mail.ru",
        "get@mail.ru",
        "tab@mail.ru",
        "zodac@mail.ru"
    ]

func getShuffle() {
    names.shuffle()
    surnames.shuffle()
    email.shuffle()
    phoneNumber.shuffle()
}

func getArray() -> [DataStore] {
    
    var dataStores: [DataStore] = []
    
    getShuffle()
    
    for key in 0...names.count - 1 {
        let dataStore = DataStore (
            name: names[key],
            surname: surnames[key],
            email: email[key],
            phoneNumber: phoneNumber[key]
        )
        dataStores.append(dataStore)
    }
    return dataStores
}

