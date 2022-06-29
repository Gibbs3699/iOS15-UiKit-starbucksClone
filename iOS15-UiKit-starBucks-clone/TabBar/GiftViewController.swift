//
//  GiftViewController.swift
//  iOS15-UiKit-starBucks-clone
//
//  Created by TheGIZzz on 29/6/2565 BE.
//

import UIKit

class GiftViewController: StarBucksViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .green
        title = "Gift"
    }
    
    override func commonInit() {
        setTabBarImage(imageName: "gift.fill", title: "Gift")
    }
}
