//
//  MainViewController.swift
//  TimeTracker
//
//  Created by Aleix Baggerman on 22/07/2018.
//  Copyright © 2018 Aleix Baggerman. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    //Mark: - Properties
    @IBOutlet weak var stackViewTopConstraint: NSLayoutConstraint!
    
    //Mark: - Life Cycle
    init () {
        super.init(nibName: "MainViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        stackViewTopConstraint.constant =         navigationController?.navigationBar.frame.height ?? 0
    }

}
