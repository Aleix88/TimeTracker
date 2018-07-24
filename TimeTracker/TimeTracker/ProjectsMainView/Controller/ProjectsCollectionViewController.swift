//
//  ProjectsCollectionViewController.swift
//  TimeTracker
//
//  Created by Aleix Baggerman on 24/07/2018.
//  Copyright © 2018 Aleix Baggerman. All rights reserved.
//

import UIKit

class ProjectsCollectionViewController: CustomViewController {
    
    init () {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .clear
    }
    
}
