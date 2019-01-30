//
//  ViewController.swift
//  aging people
//
//  Created by Erik Hoversten on 1/29/19.
//  Copyright © 2019 Erik Hoversten. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    // Connect our TableView
    @IBOutlet weak var nameAgeTableView: UITableView!
    
    // Data array
    var names: [String] = ["George", "Mary", "Sue", "Johnny", "Betty", "Eric", "Tony", "Sarah", "Tom", "Anna", "Greg", "Helga"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Connect our TableView DataSource and Delegate Protocols
        nameAgeTableView.dataSource = self
        nameAgeTableView.delegate = self
    }
  
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return how many rows in our table we need to display our data
        return names.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Configure our TableView Cells
        // Dequeue Reusable Cells
        let cell = nameAgeTableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath)
        // Pass string data to our Title Label
        cell.textLabel?.text = names[indexPath.row]
        // Pass string data to our Detail Label
        cell.detailTextLabel?.text = String(Int.random(in: 0 ..< 99)) + " years old"
        // Return the cell to the TableView
        return cell
    }
    
}

