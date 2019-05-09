//
//  ViewController.swift
//  Todoey
//
//  Created by Nick Repaci on 5/6/19.
//  Copyright © 2019 Nicholas P. Repaci. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    let itemArray = ["Go to Skatepark", "Do a disaster", "eat food"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
    
//MARK - Tableview Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        //populates the row with the current index in the array
        cell.textLabel?.text = itemArray[indexPath.row]
        
        
        //returns to the table view and displays it as a row
        return cell
    }
    
//MARK - Tableview Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        
        //this adds the checkmark when cell is selected/removes it
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        
        
        //unhighlights the selection
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

