//
//  OrderViewController.swift
//  iOS15-UiKit-starBucks-clone
//
//  Created by TheGIZzz on 29/6/2565 BE.
//

import UIKit

class OrderViewController: StarBucksViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .green
        title = "Order"
    }
    
    override func commonInit() {
        setTabBarImage(imageName: "arrow.up.bin.fill", title: "Order")
    }
}
