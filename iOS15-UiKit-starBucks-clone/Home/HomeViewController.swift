//
//  ViewController.swift
//  iOS15-UiKit-starBucks-clone
//
//  Created by TheGIZzz on 27/6/2565 BE.
//

import UIKit

class HomeViewController: StarBucksViewController {

    let homeHeaderView = HomeHeaderView()
    let tableView = UITableView()
    var headerViewTopConstrain: NSLayoutConstraint?
    
    let cellId = "cellId"
    let titles = [ "Star balances", "Bonus stars", "Try these", "Welcome back", "Uplifting"
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()
        setTabBarImage(imageName: "house.fill", title: "Home")
        setupTableView()
        
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
        tableView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func layout() {
        view.addSubview(homeHeaderView)
        view.addSubview(tableView)
        headerViewTopConstrain =             homeHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
        
        NSLayoutConstraint.activate([
            headerViewTopConstrain!,
            homeHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            homeHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            tableView.topAnchor.constraint(equalTo: homeHeaderView.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
}

// MARK: - UITableView
extension HomeViewController: UITableViewDataSource, UITableViewDelegate {

    func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        tableView.tableFooterView = UIView()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        
        cell.textLabel?.text = titles[indexPath.row]
        cell.backgroundColor = .red
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
}

// MARK: - ScrollView
extension HomeViewController {
    
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
