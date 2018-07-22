//
//  CustomCollectionViewController.swift
//  TimeTracker
//
//  Created by Aleix Baggerman on 22/07/2018.
//  Copyright © 2018 Aleix Baggerman. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CustomCollectionViewController: UICollectionViewController {

    deinit {
        print("UICollectionViewController deinit", String(describing: self))
    }

}
