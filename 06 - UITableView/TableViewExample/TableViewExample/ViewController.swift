//
//  ViewController.swift
//  TableViewExample
//
//  Created by Evgeniy Tatyanin on 14/11/2019.
//  Copyright © 2019 Evgeniy Tatyanin. All rights reserved.
//

import UIKit

struct Animal {
    let name: String
}

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let arrayData = [[Animal(name: "Cat"), Animal(name: "Dog"), Animal(name: "Lion")], [Animal(name: "Parrot"), Animal(name: "Pig"), Animal(name: "Cougar"), Animal(name: "Parrot"), Animal(name: "Pig"), Animal(name: "Cougar")]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //tableView.delegate = self
        //tableView.dataSource = self
        
        //tableView.register(TableViewCell.self)
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50.0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrayData.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayData[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // let cell: TableViewCell = tableView.dequeueReusableCell(for: indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.configure(with: arrayData[indexPath.section][indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("ROW \(indexPath.row) DID SELECT")
        
//        let cell = tableView.cellForRow(at: indexPath) as! TableViewCell
//        cell.configure(with: Animal(name: "Cat"))
        
        let controller = SecondViewController()
        present(controller, animated: true, completion: nil)
        
    }
    func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        //Например остановка загрузки фотографий
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        //Подгрузка данных (пагинация)
    }
    
}

