//
//  ViewController.swift
//  191224_TryCustomCell
//
//  Created by Demian on 2019/12/24.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let tableView = UITableView()
    let data = ["christmastree","christmascat"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.frame = view.frame
        tableView.rowHeight = 80
        tableView.dataSource = self
        
        tableView.register(CustomCell.self, forCellReuseIdentifier: "CustomCell")
        
        view.addSubview(tableView)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
      
        self.navigationItem.title = "Title"
        self.navigationItem.rightBarButtonItem = .init(title: "Next", style: .plain, target: self, action: #selector(rightBarButton))

    }
    
    @objc func rightBarButton() {
        present(SecondViewController(), animated: true)
        
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell
        cell.myImage.image = UIImage(named: "\(data[indexPath.row])")
        cell.myLabel.text = "\(data[indexPath.row])"
        cell.delegate = self
        return cell
    }
}

extension ViewController: CustomCellDelegate {
    func didTabButton(_ customCell: CustomCell) {
        
        guard let row = tableView.indexPath(for: customCell)?.row else { return }
        let secondVC = SecondViewController()
        
        switch row {
        case 0:
            secondVC.exImage.image = UIImage(named: "\(data[row])")
//            secondVC.exImage.contentMode = .scaleAspectFit
            secondVC.exLabel.text = "Christmas Tree"
            secondVC.modalPresentationStyle = .fullScreen
//            present(secondVC, animated: false)
            self.navigationController?.pushViewController(secondVC, animated: true)
            
        default:
            secondVC.exImage.image = UIImage(named: "\(data[row])")
//            secondVC.exImage.contentMode = .scaleAspectFit
            secondVC.exLabel.text = "Christmas Cat"
            secondVC.modalPresentationStyle = .fullScreen
            self.navigationController?.pushViewController(secondVC, animated: true)
//            present(secondVC, animated: false)
        }
    }
}
