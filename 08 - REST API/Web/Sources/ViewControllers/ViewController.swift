//
//  ViewController.swift
//  Web
//
//  Created by Sergey Balalaev on 21.11.2019.
//  Copyright © 2019 Altarix. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var items: [Item] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        #warning("UIActivityIndicatorView need show that")
        
        // PromiseKit
        
        APIServices.shared.getObject(method: APIServices.eventMethod, params: ["id" : "F95908B6-492E-4D4A-B780-66E9DFE413E4"])
        {[weak self] (result : Cource?, error: Error?) in
            if let error = error {
                print("\(error)")
            } else if let result = result {
                print("\(result)")
                self?.update(from: result)
            }
        }
    }


    private func update(from result: Cource) {
        navigationItem.title = result.event.title
        items = result.event.dayes.compactMap { day in
            return day.items.first
        }
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = items[indexPath.row].title
        
        return cell
    }
}

