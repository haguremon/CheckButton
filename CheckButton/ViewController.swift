//
//  ViewController.swift
//  CheckButton
//
//  Created by IwasakIYuta on 2021/12/09.
//

import UIKit

final class ViewController: UIViewController {

    private lazy var checkButton: CheckBox = {
        let button = CheckBox()
        button.addTarget(self, action: #selector(setPassword), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(checkButton)
        checkButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        checkButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    @objc func setPassword() {
        
        if checkButton.isChecked {
            print("チェックされた")
            //チェックされた時の処理
        }
        
    }

}

