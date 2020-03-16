//
//  ViewController.swift
//  200221_Alamofire
//
//  Created by Demian on 2020/02/21.
//  Copyright © 2020 Demian. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  private var users: [User] = [] {
    didSet{tableView.reloadData()}
  }
  private let serviceManger = ServiceManager.shared
  
  override func viewDidLoad() {
    tableView.rowHeight = 60
    tableView.dataSource = self
    super.viewDidLoad()
    
    serviceManger.requestUser { [weak self] result in
      switch result {
      case .success(let users):
        self?.users = users
      case .failure(let error):
        print(error.localizedDescription)
      }
    }
    
  }
  func requestCellData(_ cell: UITableViewCell, for indexPath: IndexPath) {
    let user = users[indexPath.row]
    serviceManger.requestImage(user.photo) { [weak self] response in
      guard let data = try? response.get() else {return}
      
      if let cell = self?.tableView.cellForRow(at: indexPath) {
        cell.imageView?.image = UIImage(data: data)
        
        cell.textLabel?.text = user.fullName
        cell.detailTextLabel?.text = user.email
      }
    }
  }
  
}


extension ViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return users.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    //    let user = users[indexPath.row]
    
    requestCellData(cell, for: indexPath)
    
    return cell
  }
}
