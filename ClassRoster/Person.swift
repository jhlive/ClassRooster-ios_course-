//
//  Person.swift
//  ClassRoster
//
//  Created by René Alfredo García Hernández on 2/19/15.
//  Copyright (c) 2015 ragar90. All rights reserved.
//

let names = ["Dan","Roderick","Lee","Geraldine","Elsa","Annette","Preston","Bridget","Robin","Barry","Rene","Rose","Brian","Jon","Brandon","Stewart","Freda","Gary","Janet","Sheryl","Saul","Grady","Elvira","Bob","Carla"]
let lastnames = ["Gray","James","Price","Berry","Figueroa","Curry","Holt","Robbins","Poole","Adams","Lucas","Craig","Gibbs","Brooks","West","Bowman","Hodges","Brock","Gross","Sutton","Owen","Terry","Simon","Phillips","Myers"]

import Foundation
class Person {
    let firstName : String
    let lastName : String
    init(firstName : String, lastName : String ){
        self.firstName = firstName
        self.lastName = lastName
    }
    init(){
        let randomNameIndex = Int(arc4random_uniform(UInt32(names.count)))
        let randomLastNameIndex = Int(arc4random_uniform(UInt32(lastnames.count)))
        self.firstName = names[randomNameIndex]
        self.lastName = lastnames[randomLastNameIndex]
    }
    func fullName()-> String{
        return self.firstName + " " + self.lastName
    }
}