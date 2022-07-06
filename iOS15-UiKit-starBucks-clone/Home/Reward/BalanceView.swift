//
//  BalanceView.swift
//  iOS15-UiKit-starBucks-clone
//
//  Created by TheGIZzz on 6/7/2565 BE.
//

import UIKit

class BalanceView: UIView {

    let starBalanceLabel = UILabel()
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

extension BalanceView {
    
    func style() {
        pointLabel.translatesAutoresizingMaskIntoConstraints = false
        pointLabel.font = UIFont.preferredFont(forTextStyle: .largeTitle).bold()
        pointLabel.text = "12"
        
        starBalanceLabel.translatesAutoresizingMaskIntoConstraints = false
        starBalanceLabel.font = UIFont.preferredFont(forTextStyle: .footnote)
        starBalanceLabel.textColor = .label
        starBalanceLabel.text = "Star balance"
        
        starView.translatesAutoresizingMaskIntoConstraints = false
        starView.tintColor = .starYellow
        starView.contentMode = .scaleAspectFit
        
    }
    
    func layout() {
        addSubview(pointLabel)
        addSubview(starBalanceLabel)
        addSubview(starView)
        
        NSLayoutConstraint.activate([
            pointLabel.topAnchor.constraint(equalTo: topAnchor),
            pointLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            
            starView.leadingAnchor.constraint(equalTo: pointLabel.trailingAnchor, constant: -2),
            starView.centerYAnchor.constraint(equalTo: pointLabel.centerYAnchor, constant: 4),
            starView.heightAnchor.constraint(equalToConstant: 15),
            
            starBalanceLabel.topAnchor.constraint(equalTo: pointLabel.bottomAnchor, constant: 0),
            starBalanceLabel.leadingAnchor.constraint(equalTo: pointLabel.leadingAnchor),
            starBalanceLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            starBalanceLabel.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
