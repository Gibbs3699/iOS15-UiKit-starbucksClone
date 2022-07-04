//
//  PlaceHolderViewController.swift
//  iOS15-UiKit-starBucks-clone
//
//  Created by TheGIZzz on 3/7/2565 BE.
//

import UIKit

class PlaceHolderViewController: UIViewController {
    
    let label = UILabel()
    
    init(_ text: String) {
        super.init(nibName: nil, bundle: nil)
        label.text = text
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }

}

extension PlaceHolderViewController {
    
    func style() {
        view.backgroundColor = .blue
        label.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func layout() {
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            view.heightAnchor.constraint(equalToConstant: 300)
        ])
    }
}
