//
//  RewardTileView.swift
//  iOS15-UiKit-starBucks-clone
//
//  Created by TheGIZzz on 6/7/2565 BE.
//

import UIKit

class RewardTileView: UIView {
    
    let balanceView = BalanceView()
    let rewardButton = UIButton()
    let rewardsGraphView = RewardsGraphView()
    let starRewardView = StarRewardView()
    var detailsButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 100, height: 300)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        rewardsGraphView.actualFrameWidth = frame.width
        rewardsGraphView.drawRewardsGraph()
    }
    
}

extension RewardTileView {
    
    func style() {
        balanceView.translatesAutoresizingMaskIntoConstraints = false
        
        rewardsGraphView.translatesAutoresizingMaskIntoConstraints = false
        
        starRewardView.translatesAutoresizingMaskIntoConstraints = false
        
        makeRewardsOptionButton()
        
        detailsButton = makeClearButton(withText: "Details")
        
    }
    
    func makeRewardsOptionButton() {
        rewardButton.translatesAutoresizingMaskIntoConstraints = false
//        rewardButton.addTarget(self, action: #selector(rewardOptionsTapped), for: .primaryActionTriggered)

        let configuration = UIImage.SymbolConfiguration(scale: .small)
        let image = UIImage(systemName: "chevron.down", withConfiguration: configuration)

        rewardButton.setImage(image, for: .normal)
        rewardButton.imageView?.tintColor = .label
        rewardButton.imageView?.contentMode = .scaleAspectFit

        rewardButton.setTitle("Rewards options", for: .normal)
        rewardButton.setTitleColor(.label, for: .normal)
        rewardButton.titleLabel?.font = UIFont.preferredFont(forTextStyle: .footnote)

        rewardButton.semanticContentAttribute = .forceRightToLeft
        rewardButton.imageEdgeInsets = UIEdgeInsets(top: 2, left: 20, bottom: 0, right: 0)
        rewardButton.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 20)
    }
    
    func layout() {
        addSubview(balanceView)
        addSubview(rewardButton)
        addSubview(rewardsGraphView)
        addSubview(starRewardView)
        addSubview(detailsButton)
        
        NSLayoutConstraint.activate([
            balanceView.topAnchor.constraint(equalTo: topAnchor),
            balanceView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 2),

            rewardButton.centerYAnchor.constraint(equalTo: balanceView.pointLabel.centerYAnchor),
            trailingAnchor.constraint(equalToSystemSpacingAfter: rewardButton.trailingAnchor, multiplier: 3),
            
            rewardsGraphView.topAnchor.constraint(equalToSystemSpacingBelow: balanceView.bottomAnchor, multiplier: 1),
            rewardsGraphView.centerXAnchor.constraint(equalTo: centerXAnchor),
            rewardsGraphView.widthAnchor.constraint(equalToConstant: frame.width),
            
            
            starRewardView.topAnchor.constraint(equalTo: rewardsGraphView.bottomAnchor, constant: 8),
            starRewardView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1),
            trailingAnchor.constraint(equalToSystemSpacingAfter: starRewardView.trailingAnchor, multiplier: 1),
            
            detailsButton.topAnchor.constraint(equalToSystemSpacingBelow: starRewardView.bottomAnchor, multiplier: 1),
            detailsButton.leadingAnchor.constraint(equalTo: balanceView.leadingAnchor),
            bottomAnchor.constraint(equalToSystemSpacingBelow: detailsButton.bottomAnchor, multiplier: 3),
            
            
        ])

    }
}
