//
//  StarRewardRow.swift
//  iOS15-UiKit-starBucks-clone
//
//  Created by TheGIZzz on 9/7/2565 BE.
//

import UIKit

class StarRewardRow: UIView {

    let starAndPoints = StarAndPoints()
    let descriptionLabel = UILabel()
    
    init(numberOfPoint: String , description: String) {
        descriptionLabel.text = description
        starAndPoints.pointLabel.text = numberOfPoint
        
        super.init(frame: .zero)
        
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

extension StarRewardRow {
    func style() {
        starAndPoints.translatesAutoresizingMaskIntoConstraints = false
        
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.font = UIFont.preferredFont(forTextStyle: .footnote)
        descriptionLabel.numberOfLines = 0
        descriptionLabel.lineBreakMode = .byWordWrapping
        descriptionLabel.sizeToFit() // make label fit into its default size

    }
    
    func layout() {
        addSubview(starAndPoints)
        addSubview(descriptionLabel)
        
        NSLayoutConstraint.activate([
            starAndPoints.topAnchor.constraint(equalTo: topAnchor),
            starAndPoints.leadingAnchor.constraint(equalTo: leadingAnchor),
            starAndPoints.bottomAnchor.constraint(equalTo: bottomAnchor),

            descriptionLabel.topAnchor.constraint(equalTo: topAnchor),
            descriptionLabel.leadingAnchor.constraint(equalTo: starAndPoints.trailingAnchor, constant: 4),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            descriptionLabel.bottomAnchor.constraint(equalTo: bottomAnchor),

        ])
        
        starAndPoints.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        descriptionLabel.heightAnchor.constraint(equalToConstant: descriptionLabel.frame.size.height).setActiveBreakable()
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 10, height: 16)
    }
}
