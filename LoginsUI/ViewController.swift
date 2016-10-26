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
    
    let seguesIndentifiers = [
        "PresentLoginWithBackground"
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
        return seguesIndentifiers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIndentifier)!
        
        // set label to segue identifier
        cell.textLabel?.text = seguesIndentifiers[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: seguesIndentifiers[indexPath.row], sender: self)
    }
}

