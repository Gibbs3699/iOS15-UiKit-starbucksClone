//
//  StarBucksViewController.swift
//  iOS15-UiKit-starBucks-clone
//
//  Created by TheGIZzz on 29/6/2565 BE.
//

import UIKit

// take care of inherietance
class StarBucksViewController: UIViewController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func commonInit() {
        
    }
    
    func setTabBarImage(imageName: String, title: String) {
        let configuretion = UIImage.SymbolConfiguration(scale: .large)
        let image = UIImage(systemName: imageName, withConfiguration: configuretion)
        tabBarItem = UITabBarItem(title: title, image: image, tag: 0)
    }
}
