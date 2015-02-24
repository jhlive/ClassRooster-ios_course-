//
//  ViewController.swift
//  ClassRoster
//
//  Created by René Alfredo García Hernández on 2/17/15.
//  Copyright (c) 2015 ragar90. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var colorToggler = true
    var days = ["Monday", "Tuesday", "Wendsday", "Thursday", "Friday"  ]
    var currentIndex = 0
    @IBOutlet weak var backgroundBtn: UIButton!
    @IBOutlet weak var backgroundSwitch: UISwitch!
    @IBOutlet weak var homeworkLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let brad = Person(firstName: "Brad", lastName: "Johnson")
        self.view.backgroundColor = UIColor.redColor()
        println("View did load")
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        println("view will apear")
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        println("View did apear!!")
    }
    @IBAction func changeBackgroundColor(sender: UIButton) {
        if(self.colorToggler){
            self.view.backgroundColor = UIColor.blueColor()
        }
        else{
            self.view.backgroundColor = UIColor.redColor()
        }
        self.colorToggler = !self.colorToggler
        
        var people = [Person]()
        let brad = Person(firstName: "Brand", lastName: "Johnson")
        people.append(brad)
        let russel = Person(firstName: "Russel", lastName: "Wilson")
        people.append(russel)
        let coolPeople = [brad,russel]
        let dude = coolPeople[0]
        dude.lastName
        
    }

    @IBAction func switchToggled(sender: UISwitch) {
        if(sender.on){
            self.view.backgroundColor = UIColor.yellowColor()
            self.backgroundBtn.backgroundColor = UIColor.blackColor()
        }
        else{
            self.view.backgroundColor = UIColor.purpleColor()
            self.backgroundBtn.backgroundColor = UIColor.whiteColor()
        }
    }
    @IBAction func leftPressed(sender: AnyObject) {
        if(currentIndex > 0){
            currentIndex = currentIndex - 1
            homeworkLabel.text = days[currentIndex]
            println(days[currentIndex])
            println(currentIndex)
        }
    }
    @IBAction func rightPressed(sender: AnyObject) {
        if(currentIndex < 4){            currentIndex = currentIndex + 1
            homeworkLabel.text = days[currentIndex]
            println(days[currentIndex])
            println(currentIndex)
        }

    }
}

