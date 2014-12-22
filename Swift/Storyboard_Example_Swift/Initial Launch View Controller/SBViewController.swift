//
//  ViewController.swift
//  Storyboard_Example_Swift
//
//  Created by Samrat on 12/22/14.
//  Copyright (c) 2014 footyapps27. All rights reserved.
//

import UIKit

class SBViewController: UITableViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 7;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        //variable type is inferred
        var cell = tableView.dequeueReusableCellWithIdentifier("CELL") as? UITableViewCell
        
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "CELL")
        }
        
        //we know that cell is not empty now so we use ! to force unwrapping
        
        cell!.textLabel!.text = "Baking Soda"
        
        
        return cell!;
    }
}

