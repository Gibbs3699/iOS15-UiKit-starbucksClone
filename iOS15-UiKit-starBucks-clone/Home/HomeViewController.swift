//
//  ViewController.swift
//  iOS15-UiKit-starBucks-clone
//
//  Created by TheGIZzz on 27/6/2565 BE.
//

import UIKit

class HomeViewController: StarBucksViewController {

    let homeHeaderView = HomeHeaderView()
    let scrollView = UIScrollView()
    let stackView = UIStackView()
    
    var headerViewTopConstrain: NSLayoutConstraint?
    
    let cellId = "cellId"
    let titles = [ TileViewController(title: "StarBucks Coffee 1", subtitle: "We add freshly steamed milk and cinnamon dolce-flavored syrup to our classic espresso, topped with sweetened whipped cream and a cinnamon.", imageName: "communities"),
       TileViewController(title: "StarBucks Coffee 2", subtitle: "We add freshly steamed milk and cinnamon dolce-flavored syrup to our classic espresso, topped with sweetened whipped cream and a cinnamon.", imageName: "news-available"),
       TileViewController(title: "StarBucks Coffee 3", subtitle: "We add freshly steamed milk and cinnamon dolce-flavored syrup to our classic espresso, topped with sweetened whipped cream and a cinnamon.", imageName: "bonus"),
        PlaceHolderViewController("Star balances"), PlaceHolderViewController("Bonus stars"), PlaceHolderViewController("Try these"), PlaceHolderViewController("Welcome back"), PlaceHolderViewController("Uplifting")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()
        setTabBarImage(imageName: "house.fill", title: "Home")
        setupScrollView()
        style()
        layout()
        
    }
    
    func setupNavBar() {
        navigationController?.navigationBar.topItem?.title = "Home"
    }
    
    
    func setupScrollView() {
        scrollView.delegate = self
    }
}

extension HomeViewController {
    
    func style() {
        homeHeaderView.translatesAutoresizingMaskIntoConstraints = false
        homeHeaderView.backgroundColor = .systemPink
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.axis = .vertical
        stackView.spacing = 8
    }
    
    func layout() {
        view.addSubview(homeHeaderView)
        view.addSubview(scrollView)
        
        scrollView.addSubview(stackView)

        for title in titles {
            addChild(title)
            stackView.addArrangedSubview(title.view)
            title.didMove(toParent: self)
        }
        
        headerViewTopConstrain =             homeHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
        
        NSLayoutConstraint.activate([
            headerViewTopConstrain!,
            homeHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            homeHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            scrollView.topAnchor.constraint(equalTo: homeHeaderView.bottomAnchor, constant: 8),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
            
        ])
    }
}

// MARK: - ScrollView
extension HomeViewController: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let y = scrollView.contentOffset.y
        
        let swipingDown = y <= 0
        let swipingUp = y > 30
        let labelHeight = homeHeaderView.greeting.frame.height + 16
        
        UIView.animate(withDuration: 0.3) {
            self.homeHeaderView.greeting.alpha = swipingDown ? 1.0 : 0.0
        }
        
        UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 0.3, delay: 0, options: [], animations: {
            
            self.headerViewTopConstrain?.constant = swipingUp ? -labelHeight : 0
            self.view.layoutIfNeeded() // call auto layout and relay view
        })
    }
}
