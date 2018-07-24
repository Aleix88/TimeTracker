//
//  ProjectsCollectionViewController.swift
//  TimeTracker
//
//  Created by Aleix Baggerman on 24/07/2018.
//  Copyright © 2018 Aleix Baggerman. All rights reserved.
//

import UIKit

class ProjectsCollectionViewController: CustomCollectionViewController {
    
    //Mark: - Properties
    let cellID = "ProjectCell"
    
    //MARK: - Life Cycle
    
    init () {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super.init(collectionViewLayout: layout)
    }
    
    required init?(coder aDecoder: NSCoder) {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super.init(collectionViewLayout: layout)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .clear
        registerCells ()
    }
    
}

//MARK: Configurations
private extension ProjectsCollectionViewController {
    func registerCells () {
        collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellID)
    }
}

//MARK: - CollectionView Datasource

extension ProjectsCollectionViewController {
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath)
        cell.backgroundColor = .yellow
        return cell
    }
}

//MARK: - CollectionView Delegate

extension ProjectsCollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = collectionView.frame.height
        let width = height + height*0.1
        return CGSize(width: width, height: height)
    }
}









