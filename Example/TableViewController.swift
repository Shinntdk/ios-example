//
//  TableViewController.swift
//  Example
//
//  Created by Natthida Kritveeranant on 30/4/2565 BE.
//

import UIKit

class TableViewController: UIViewController {
    let tableView = UITableView()
    let amiiboList = ["Zelda", "Link", "Navi", "Ganondorf"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureView()
        
    }
    
    private func configureView() {
        
        view.backgroundColor = .systemBackground
        
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellid")
        
        
        // MARK: SubView
        view.addSubview(tableView)
        
        
        // MARK: Layout
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        tableView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
    }

}

// MARK: UITableViewDataSource

extension TableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return amiiboList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellid", for: indexPath)
        
        let name = amiiboList[indexPath.row]
        
        cell.textLabel?.text = name
        return cell
    }
}
