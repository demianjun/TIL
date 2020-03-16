//
//  ViewController.swift
//  191223_NavigationController
//
//  Created by Demian on 2019/12/23.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //네비게이션 바 타이틀 설정할때 (코드로 하는법)iOS 11 이상임 largetitle은
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "FirstVC"
        navigationItem.title = "FirstVC2"
        view.backgroundColor = .yellow
        
        //    navigationItem.largeTitleDisplayMode = .never = largetitle사용안할때
        let barButtonItem = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(pushViewController(_:)))
        let barButtonItem2 = UIBarButtonItem(title: "Next2", style: .plain, target: self, action: #selector(pushViewController(_:)))
        //    navigationItem.rightBarButtonItems = [barButtonItem , barButtonItem2]
        navigationItem.leftBarButtonItems = [barButtonItem , barButtonItem2]
        
        //    let storyboard = UIStoryboard(name: “Main”, bundle: nil)
        //메인 스토리보드 상에서 시작점(화살표가 연결되어있는 뷰 컨트롤러)를 가져옴
        //( navigationcontroller를 가져옴 )
        //let initialVC = storyboard.instantiateInitialViewController()
        
        //secondViewController를 가져옴 (타입캐스팅으로 풀어야함)
        //    let secondVC = storyboard.instantiateViewController(identifier: “SecondViewController”) as! SecondViewController
        //
        //show, present, push 다 다르게 화면이 뜸 ( 확인해볼것)
        //show(secondVC , sender: nil)
        //present(secondVC, animated: true)
        // print(navigationController)
        //navigationController?.pushViewController(secondVC, animated: true)
    }
    
    @objc private func pushViewController(_ sender: Any) {
        let secondVC = SecondViewController()
        show(secondVC, sender: sender)
        // navigationController?.pushViewController(secondVC, animated: true)
    }
}


