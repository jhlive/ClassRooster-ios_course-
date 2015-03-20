//
//  Person.swift
//  ClassRoster
//
//  Created by René Alfredo García Hernández on 2/19/15.
//  Copyright (c) 2015 ragar90. All rights reserved.
//

let names = ["Dan","Roderick","Lee","Geraldine","Elsa","Annette","Preston","Bridget","Robin","Barry","Rene","Rose","Brian","Jon","Brandon","Stewart","Freda","Gary","Janet","Sheryl","Saul","Grady","Elvira","Bob","Carla"]
let lastnames = ["Gray","James","Price","Berry","Figueroa","Curry","Holt","Robbins","Poole","Adams","Lucas","Craig","Gibbs","Brooks","West","Bowman","Hodges","Brock","Gross","Sutton","Owen","Terry","Simon","Phillips","Myers"]

import UIKit
class Person : NSObject, NSCoding {
    var firstName : String
    var lastName : String
    var image : UIImage? // Optional propertie
    
    required init(coder aDecoder: NSCoder) {
        self.firstName = aDecoder.decodeObjectForKey("firstName") as String
        self.lastName = aDecoder.decodeObjectForKey("lastName") as String
        if let image = aDecoder.decodeObjectForKey("image") as? UIImage {
            self.image = image
        }
    }
    init(firstName : String, lastName : String ){
        self.firstName = firstName
        self.lastName = lastName
    }
    override init(){
        let randomNameIndex = Int(arc4random_uniform(UInt32(names.count)))
        let randomLastNameIndex = Int(arc4random_uniform(UInt32(lastnames.count)))
        self.firstName = names[randomNameIndex]
        self.lastName = lastnames[randomLastNameIndex]
    }
    func fullName()-> String{
        return self.firstName + " " + self.lastName
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self.firstName, forKey: "firstName")
        aCoder.encodeObject(self.lastName, forKey: "lastName")
        if self.image != nil {
            aCoder.encodeObject(self.image, forKey: "image")
        }
    }
    
    class func randomPeopleGenerator(numberOfRandomPeople: Int) -> Array<Person>{
        var people = [Person]()
        for var i = 0; i < numberOfRandomPeople; ++i{
            var person = Person()
            people.append(person)
        }
        return people
    }
}