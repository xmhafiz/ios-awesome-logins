//
//  ViewController.swift
//  LoginsUI
//
//  Created by Hafiz on 26/10/2016.
//  Copyright © 2016 Hafiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var listTableView: UITableView! {
        didSet {
            listTableView.delegate = self
            listTableView.dataSource = self
        }
    }
    
    let cellIndentifier = "BasicCell"
    
    let tableData = [
        ["title": "Clean with Background Image", "segue": "PresentLoginWithBackground"],
        ["title": "Material Design", "segue": "PresentMaterial"],
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIndentifier)!
        
        let rowData = tableData[indexPath.row]
        
        // set label to segue identifier
        cell.textLabel?.text = rowData["title"]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let rowData = tableData[indexPath.row]
        
        performSegue(withIdentifier: rowData["segue"]!, sender: self)
    }
}

