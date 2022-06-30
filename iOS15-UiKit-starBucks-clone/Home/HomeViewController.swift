//
//  ViewController.swift
//  iOS15-UiKit-starBucks-clone
//
//  Created by TheGIZzz on 27/6/2565 BE.
//

import UIKit

class HomeViewController: StarBucksViewController {

    let homeHeaderView = HomeHeaderView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()
        setTabBarImage(imageName: "house.fill", title: "Home")
        
        style()
        layout()
        
    }
    
    func setupNavBar() {
        navigationController?.navigationBar.topItem?.title = "Home"
    }
}

extension HomeViewController {
    
    func style() {
        homeHeaderView.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    func layout() {
        view.addSubview(homeHeaderView)
        
        NSLayoutConstraint.activate([
            homeHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            homeHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            homeHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}
