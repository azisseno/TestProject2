//
//  ChatTableViewController.swift
//  TestProject
//
//  Created by Azis Senoaji Prasetyotomo on 8/23/17.
//  Copyright © 2017 Azis Senoaji Prasetyotomo. All rights reserved.
//

import UIKit

class ChatTableViewController: UITableViewController {

    var chats = [(String, String)]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = 400
        tableView.rowHeight = UITableViewAutomaticDimension

        chats = [
            ("incomming", "hallo"),
            ("outcomming", "Uncomment the following line to preserve selection between presentations"),
            ("incomming", "hallo"),
            ("outcomming", "Uncomment the following line to display an Edit button in the navigation bar for this view controller"),
            ("incomming", "elf.navigationItem.rightBarButtonItem = self.editButtonItem()"),
            ("incomming", "hallo")
        ]
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return chats.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let chat = chats[indexPath.row]
        if chat.0 == "incomming" {
            let cell = tableView.dequeueReusableCell(withIdentifier: "incommingCell", for: indexPath) as! IncommingCell
            cell.configureCell(chat: chat.1)
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "outcommingCell", for: indexPath) as! OutcommingCell
            cell.configureCell(chat: chat.1)
            return cell
        }

    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }


}
