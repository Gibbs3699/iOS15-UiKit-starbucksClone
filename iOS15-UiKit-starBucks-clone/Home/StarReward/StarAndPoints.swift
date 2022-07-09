//
//  StarAndPoints.swift
//  iOS15-UiKit-starBucks-clone
//
//  Created by TheGIZzz on 9/7/2565 BE.
//

import UIKit

class StarAndPoints: UIView {

    let pointLabel = UILabel()
    let starView = makeSymbolImageView(systemName: "star.fill")
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension StarAndPoints {
    
    func style() {
        pointLabel.translatesAutoresizingMaskIntoConstraints = false
        pointLabel.font = UIFont.preferredFont(forTextStyle: .callout).bold()
        pointLabel.textAlignment = .right
        
        starView.translatesAutoresizingMaskIntoConstraints = false
        starView.tintColor = .starYellow
        starView.contentMode = .scaleAspectFit
        
    }
    
    func layout() {
        addSubview(pointLabel)
        addSubview(starView)
        
        NSLayoutConstraint.activate([
            pointLabel.topAnchor.constraint(equalTo: topAnchor, constant: 2),
            pointLabel.trailingAnchor.constraint(equalTo: starView.leadingAnchor, constant: -2),
            pointLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            starView.trailingAnchor.constraint(equalTo: trailingAnchor),
            starView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 60, height: 16)
    }
}
