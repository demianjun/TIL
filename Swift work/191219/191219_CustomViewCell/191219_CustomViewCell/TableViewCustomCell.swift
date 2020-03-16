//
//  ViewController.swift
//  191219_CustomViewCell
//
//  Created by Demian on 2019/12/19.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

class TableViewCustomCell: UIViewController {
    
    let tableView = UITableView()
    var data = Array(1...50)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        setupTableView()
    }
    
    func setupTableView() {
        tableView.frame = view.frame
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "CelliD")
        tableView.register(CustomCell.self, forCellReuseIdentifier: "Custom")
        tableView.dataSource = self
        tableView.rowHeight = 70
        view.addSubview(tableView)
    }
}

extension TableViewCustomCell: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Custom", for: indexPath) as! CustomCell
        cell.delegate = self
        cell.textLabel?.text = "\(data[indexPath.row])"
        return cell
    }
}

extension TableViewCustomCell: CustomCellDelegate {
    func buttonTouched(_ customCell: CustomCell) {
        guard let row = tableView.indexPath(for: customCell)?.row else { return }
        let addNum = data[row] + 1
        data[row] = addNum
        print("row", row)

        customCell.textLabel?.text = "\(addNum)"
    }
}
