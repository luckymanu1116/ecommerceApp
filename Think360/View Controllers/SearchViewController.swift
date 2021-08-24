//
//  SearchViewController.swift
//  Think360
//
//  Created by MANOJ REDDY on 23/08/21.
//  Copyright © 2021 MANOJ REDDY. All rights reserved.
//

import UIKit
import SwiftUI

class SearchViewController: UIViewController, UITableViewDelegate, UISearchBarDelegate {
  
    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var tableView: UITableView!
    
    
    let data = ["Groceries", "Baby Care", "Computers", "games", "Medical", "Toys","sea Food", "SuperMarket", "Vegetables"]
    
    var filterData: [String]!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Search"
        
        tableView.delegate = self
        
        tableView.dataSource = self
        
        searchBar.delegate = self
        
        filterData = data

    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filterData = []
        
        if searchText == "" {
            filterData = data
        }
        else{
        for shopping in data {
            if shopping.lowercased().contains(searchText.lowercased()){
                filterData.append(shopping)
            }
        }
        }
        self.tableView.reloadData()
    }
}

extension SearchViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
         
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filterData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = filterData[indexPath.row]
        return cell
        
    }
    
}


