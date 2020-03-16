//
//  TableViewSection.swift
//  TableViewPractice
//
//  Created by giftbot on 2019/12/05.
//  Copyright © 2019 giftbot. All rights reserved.
//

import UIKit

final class TableViewSection: UIViewController {
    
    /***************************************************
     Data :  0 부터  100 사이에 임의의 숫자
     섹션 타이틀을 10의 숫자 단위로 설정하고 각 섹션의 데이터는 해당 범위 내의 숫자들로 구성
     e.g.
     섹션 0 - 0부터 9까지의 숫자
     섹션 1 - 10부터 19까지의 숫자
     ***************************************************/
    
    override var description: String { "Practice 2 - Section" }
    
      let data = [5, 7, 16, 19, 22, 29, 30, 39, 44, 48, 50]
//    let data = Array(1...100)
    var tableDic: [Int: [Int]] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    func setupTableView () {
        let tableView = UITableView(frame: view.frame)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "CellID")
        tableView.dataSource = self
        makeDic()
        view.addSubview(tableView)
    }
    
    func makeDic() {
        for i in data {
            let key = i/10
            if tableDic[key] == nil {
                tableDic[key] = [i]
            } else {
                tableDic[key]!.append(i)
            }
        }
//        print(tableDic)
    }
}

// MARK: - UITableViewDataSource

extension TableViewSection: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        tableDic.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let sectionTietle: [Int] = tableDic.keys.sorted()
        return String(sectionTietle[section])
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let titles = tableDic.keys.sorted()
        let key = titles[section]
        return tableDic[key]!.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellID", for: indexPath)
        let temp = tableDic.keys.sorted()
        let key = temp[indexPath.section]
        cell.textLabel?.text = "\(tableDic[key]![indexPath.row])"
        return cell
    }
}
