//
//  ViewController.swift
//  AgentStudioDashboard
//
//  Created by Eldon Chan on 4/21/17.
//  Copyright © 2017 Eldon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var leftView : UIView = {
        
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    
    var middleView : UIView = {
        
        let view = UIView()
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    
    var rightView : UIView = {
        
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    
    var greetingLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Corcoran Agent Experience Center"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        createLayout()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    fileprivate func createLayout() {
        
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.backgroundColor = .orange
        stackView.distribution = .fillEqually
        stackView.spacing = CGFloat(20)
        stackView.addArrangedSubview(leftView)
        stackView.addArrangedSubview(middleView)
        stackView.addArrangedSubview(rightView)
        
        view.addSubview(stackView)
        
        stackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50).isActive = true
        stackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50).isActive = true
        stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        
        view.addSubview(greetingLabel)
        
        greetingLabel.leftAnchor.constraint(equalTo: stackView.leftAnchor).isActive = true
        greetingLabel.bottomAnchor.constraint(equalTo: stackView.topAnchor, constant: -20).isActive = true
        
    }

}

