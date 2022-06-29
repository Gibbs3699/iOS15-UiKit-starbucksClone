//
//  ScanViewController.swift
//  iOS15-UiKit-starBucks-clone
//
//  Created by TheGIZzz on 29/6/2565 BE.
//

import UIKit

class ScanViewController: StarBucksViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        title = "Scan"
    }
    
    override func commonInit() {
        setTabBarImage(imageName: "qrcode", title: "Scan")
    }

}
