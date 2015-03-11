//
//  ViewController.swift
//  ClassRoster
//
//  Created by René Alfredo García Hernández on 2/17/15.
//  Copyright (c) 2015 ragar90. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    var people = [Person]()

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "People"
        self.tableView.dataSource = self
        people = Person.randomPeopleGenerator(20)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        self.tableView.reloadData()
        
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.people.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as PersonCell
        var selectedPerson = self.people[indexPath.row]
        cell.nameLabel.text = selectedPerson.fullName()
        if selectedPerson.image != nil{
            cell.profileImageView.image = selectedPerson.image
        }
        else{
            cell.profileImageView.image = UIImage(named: "person-placeholder.jpg")
        }
        if indexPath.row == 0 {
            cell.textLabel?.textColor = UIColor.whiteColor();
            cell.backgroundColor = UIColor.blueColor();
        }
        else{
            cell.textLabel?.textColor = UIColor.blackColor();
            cell.backgroundColor = UIColor.whiteColor();
        }
        return cell
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowGreen" {
            println("showing green")
            let destinationVC = segue.destinationViewController as PersonDetailViewController
            //asking the table view for the selected index path, because we need to know which row they clicked on
            let indexPath = self.tableView.indexPathForSelectedRow()
            //figures out which person they clicked on
            let person = self.people[indexPath!.row]
            //passing the person to our destination view controller
            destinationVC.selectedPerson = person
            
            //destinationVC.selectedPerson =
            //destinationVC.title = "Hello"
        }
    }
    
    
}

