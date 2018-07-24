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
    @IBOutlet weak var lastProjectView: UIView!
    @IBOutlet weak var currentProjectsContainer: UIView!
    @IBOutlet weak var finishedProjectsContainer: UIView!
    @IBOutlet weak var createButton: UIButton!
    @IBOutlet weak var lastProjectName: UILabel!
    @IBOutlet weak var lastProjectCounterLabel: UILabel!
    
    let currentProjectsViewController = ProjectsCollectionViewController()
    let finishedProjectsViewController = ProjectsCollectionViewController()
    
    //Mark: - Life Cycle
    init () {
        super.init(nibName: "MainViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(nibName: "MainViewController", bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setupLastProjectView()
        setupCreateButton()
        setupContainersControllers()
    }
    
    //MARK: - Actions
    
    @IBAction func createProject(_ sender: UIButton) {
    }

}

//Mark: - Views setup
private extension MainViewController {
    
    func setupCreateButton() {
        createButton.layer.cornerRadius = createButton.frame.height/2
        createButton.clipsToBounds = true
    }
    
    func setupLastProjectView () {
        lastProjectView.layer.cornerRadius = 8
        lastProjectView.clipsToBounds = true
    }
    
    func setupNavBar () {
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.backgroundColor = .white
    }
    
    func setupContainersControllers () {
        addChildViewController(currentProjectsViewController)
        currentProjectsContainer.addSubview(currentProjectsViewController.view)
        currentProjectsViewController.didMove(toParentViewController: self)
        
        addChildViewController(finishedProjectsViewController)
        finishedProjectsContainer.addSubview(finishedProjectsViewController.view)
        finishedProjectsViewController.didMove(toParentViewController: self)
    }
}
