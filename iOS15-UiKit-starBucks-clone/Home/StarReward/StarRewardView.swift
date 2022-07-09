//
//  StarRewardView.swift
//  iOS15-UiKit-starBucks-clone
//
//  Created by TheGIZzz on 9/7/2565 BE.
//

import UIKit

class StarRewardView: UIView {

    let stackView = UIStackView()
    let label = UILabel()
    
    struct Reward {
        let numberOfPoint: String
        let description: String
    }
    
    let rewards: [Reward] = [
        Reward(numberOfPoint: "25", description: "Customize your drink"),
        Reward(numberOfPoint: "50", description: "Customize your drink Customize your drink"),
        Reward(numberOfPoint: "150", description: "Customize your drink"),
        Reward(numberOfPoint: "250", description: "Customize your drink Customize your drink"),
        Reward(numberOfPoint: "400", description: "Customize your drink"),
    
    ]
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension StarRewardView {
    func style() {
        backgroundColor = .tileBrown
        layer.cornerRadius = 10
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 26
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 16, trailing: -16) // set stackView a margin
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .title3).bold()
        label.text = "Rewards you can get with Stars"
        
    }
    
    func layout() {
        stackView.addArrangedSubview(label)
        
        for reward in rewards {
            stackView.addArrangedSubview(StarRewardRow(numberOfPoint: reward.numberOfPoint, description: reward.description))
        }
        
        addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])

    }
}

