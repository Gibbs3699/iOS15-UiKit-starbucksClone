//
//  ViewController.swift
//  iOS15-UiKit-starBucks-clone
//
//  Created by TheGIZzz on 27/6/2565 BE.
//

import UIKit

class HomeViewController: StarBucksViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .green
    }
    
    override func commonInit() {
        setTabBarImage(imageName: "house.fill", title: "Home")
    }
}

