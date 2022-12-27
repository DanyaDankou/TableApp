//
//  DataSource.swift
//  TableApp
//
//  Created by comp on 4.12.22.
//

import Foundation
import UIKit

class DataSource {
    static var personList = [
        PersonList(firstName: "\(randomFirstName)", secondName: "\(randomSecondName)"),
        PersonList(firstName: "\(randomFirstName)", secondName: "\(randomSecondName)"),
        PersonList(firstName: "\(randomFirstName)", secondName: "\(randomSecondName)"),
        PersonList(firstName: "\(randomFirstName)", secondName: "\(randomSecondName)"),
        PersonList(firstName: "\(randomFirstName)", secondName: "\(randomSecondName)"),
        PersonList(firstName: "\(randomFirstName)", secondName: "\(randomSecondName)"),
        PersonList(firstName: "\(randomFirstName)", secondName: "\(randomSecondName)"),
        PersonList(firstName: "\(randomFirstName)", secondName: "\(randomSecondName)"),
        PersonList(firstName: "\(randomFirstName)", secondName: "\(randomSecondName)"),
        PersonList(firstName: "\(randomFirstName)", secondName: "\(randomSecondName)"),
    ]
    
    static var personInfo = [
    PersonInfo(email: "asdada@mail.com", phoneNumber: "+375298195245")
    ]
}

    let arrayFirstName = ["Dan", "Bob", "Pitter", "Symon", "Alfred", "Kate", "Maria", "Valeria", "George", "Alex"]
    let arraySecondName = ["Krivikov", "Dankou", "Petrov", "Moroz", "Peterson", "Mcgreggor", "Mcdavid", "Fury", "Lopes", "Jenner"]
    
var randomSecondName = arraySecondName.randomElement()!
var randomFirstName = arrayFirstName.randomElement()!




