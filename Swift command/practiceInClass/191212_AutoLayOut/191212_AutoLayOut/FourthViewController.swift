//
//  FourthViewController.swift
//  191212_AutoLayOut
//
//  Created by Demian on 2019/12/13.
//  Copyright © 2019 Demian. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    
    private let a = UIView()
    private let b = UIView()
    private let c = UIView()
    private let d = UIView()
    private let e = UIView()
    private let f = UIView()
    private let g = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        a.backgroundColor = .black
        b.backgroundColor = .blue
        c.backgroundColor = .brown
        d.backgroundColor = .darkGray
        e.backgroundColor = .green
        f.backgroundColor = .orange
        g.backgroundColor = .purple
        
        layOut()
        
    }
    
    private func layOut() {
        let action = [a,b,c,d,e,f,g]
        for i in action {
            view.addSubview(i)
        }
        
        a.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            a.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            a.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            a.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: -5),
            a.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: -5)
        ])
        b.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            b.topAnchor.constraint(equalTo: a.topAnchor, constant: 10),
            b.leadingAnchor.constraint(equalTo: a.leadingAnchor, constant: 10),
            b.widthAnchor.constraint(equalTo: a.widthAnchor, multiplier: 0.5, constant: -15),
            b.heightAnchor.constraint(equalTo: a.heightAnchor, multiplier: 0.3, constant: -5)
            
        ])
        
        
        c.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            c.topAnchor.constraint(equalTo: a.topAnchor, constant: 10),
            c.trailingAnchor.constraint(equalTo: a.trailingAnchor, constant: -10),
            c.widthAnchor.constraint(equalTo: a.widthAnchor, multiplier: 0.5, constant: -15),
            c.heightAnchor.constraint(equalTo: a.heightAnchor, multiplier: 0.3, constant: -5)
        ])
        d.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            d.topAnchor.constraint(equalTo: b.bottomAnchor, constant: 10),
            d.leadingAnchor.constraint(equalTo: a.leadingAnchor, constant: 10),
            d.widthAnchor.constraint(equalTo: b.widthAnchor, multiplier: 1.0),
            d.heightAnchor.constraint(equalTo: b.heightAnchor, multiplier: 1.0)
        ])
        e.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            e.topAnchor.constraint(equalTo: c.bottomAnchor, constant: 10),
            e.trailingAnchor.constraint(equalTo: a.trailingAnchor, constant: -10),
            e.widthAnchor.constraint(equalTo: c.widthAnchor, multiplier: 1),
            e.heightAnchor.constraint(equalTo: c.heightAnchor, multiplier: 1)
        ])
        f.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            f.topAnchor.constraint(equalTo: d.bottomAnchor, constant: 10),
            f.leadingAnchor.constraint(equalTo: a.leadingAnchor, constant: 10),
            f.widthAnchor.constraint(equalTo: d.widthAnchor, multiplier: 1),
            f.heightAnchor.constraint(equalTo: d.heightAnchor, multiplier: 1)
        ])
        g.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            g.topAnchor.constraint(equalTo: e.bottomAnchor, constant: 10),
            g.trailingAnchor.constraint(equalTo: a.trailingAnchor, constant:-10),
            g.widthAnchor.constraint(equalTo: e.widthAnchor, multiplier: 1),
            g.heightAnchor.constraint(equalTo: e.heightAnchor, multiplier: 1)
        ])
        
        
    }
    
}
