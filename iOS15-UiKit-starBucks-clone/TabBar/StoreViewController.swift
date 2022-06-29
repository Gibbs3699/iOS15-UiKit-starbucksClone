//
//  StoreViewController.swift
//  iOS15-UiKit-starBucks-clone
//
//  Created by TheGIZzz on 29/6/2565 BE.
//

import UIKit

class StoreViewController: StarBucksViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .green
        title = "Stores"
    }
    
    override func commonInit() {
        setTabBarImage(imageName: "location.fill", title: "Stores")
    }
}
