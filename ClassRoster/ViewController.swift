//
//  ViewController.swift
//  ClassRoster
//
//  Created by René Alfredo García Hernández on 2/17/15.
//  Copyright (c) 2015 ragar90. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let names = ["Kristy George","Bradford Brewer","Heather Martin","Marguerite Bishop","Ginger Leonard","Kelley Bates","Boyd Garza","Robin Carter","Evan Garrett","Eduardo Gregory","Natasha Wong","Travis Guzman","Cynthia Montgomery","Charles Ellis","Jodi Briggs","Alice Salazar","Kelli Hammond","Opal Daniels","Florence Gomez","Taylor Hunter","Wilfred Wise","Erma Hughes","Mario Sandoval","Darrin Paul","Vincent Woods"]

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        println("view will apear")
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        println("View did apear!!")
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.names.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = names[indexPath.row]
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
    
}

