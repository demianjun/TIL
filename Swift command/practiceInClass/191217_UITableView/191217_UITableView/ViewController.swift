//
//  ViewController.swift
//  191217_UITableView
//
//  Created by Demian on 2019/12/17.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}


extension ViewController: UITableViewDataSource{
//    func numberOfSections(in tableView: UITableView) -> Int {
//        <#code#>
//    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    } // 행의 갯수를 결정
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        indexPath.section // 몇번째 섹션인지
//        indexPath.row // 몇번째 행인지
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellID", for: indexPath)
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    } //
    
}
