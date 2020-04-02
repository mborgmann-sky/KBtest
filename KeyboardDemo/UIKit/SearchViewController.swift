//
//  SearchController.swift
//  KeyboardDemo
//
//  Created by Michael Borgmann on 01/04/2020.
//  Copyright © 2020 Michael Borgmann. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    /*
    let searchController = UISearchController(searchResultsController: searchResultsController)
    searchController.searchResultsUpdater = searchResultsController
    searchController.searchBar.placeholder = NSLocalizedString("Enter keyword (e.g. iceland)", comment: "")
    
    // Contain the `UISearchController` in a `UISearchContainerViewController`.
    let searchContainer = UISearchContainerViewController(searchController: searchController)
    searchContainer.title = NSLocalizedString("Search", comment: "")
    
    // Finally contain the `UISearchContainerViewController` in a `UINavigationController`.
    let searchNavigationController = UINavigationController(rootViewController: searchContainer)
    return searchNavigationController
    */
    
    override func viewDidLoad() {
        let image = UIImage(named: "AGG_SOURCE")
        view.backgroundColor = UIColor(patternImage: image!)
        
        let overlay = UIView(frame: view.frame)
        overlay.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        view.insertSubview(overlay, at: 0)
    }
    
}
