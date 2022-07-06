//
//  RewardTileViewController.swift
//  iOS15-UiKit-starBucks-clone
//
//  Created by TheGIZzz on 6/7/2565 BE.
//

import UIKit

class RewardTileViewController: UIViewController {

    let rewardTileView = RewardTileView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        style()
        layout()
    }
    
}

extension RewardTileViewController {
    
    func style() {
        rewardTileView.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    func layout() {
        view.addSubview(rewardTileView)
        
        NSLayoutConstraint.activate([
            rewardTileView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            rewardTileView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            rewardTileView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            rewardTileView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
}
