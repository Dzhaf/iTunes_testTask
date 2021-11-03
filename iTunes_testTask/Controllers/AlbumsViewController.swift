//
//  ViewController.swift
//  iTunes_testTask
//
//  Created by Dzhafar on 02.11.2021.
//

import UIKit

class AlbumsViewController: UIViewController {
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .white
        tableView.register(AlbumsTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    private let searchController = UISearchController(searchResultsController: nil)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupDelegate()
        setupConstraints()
        setupSearchController()
        
    }
    
    private func setupViews() {
        view.backgroundColor = .white
        view.addSubview(tableView)
    }
    
    private func setupDelegate() {
        tableView.delegate = self
        tableView.dataSource = self
        
        searchController.searchBar.delegate = self
        
    }
    
    private func setupSearchController() {
        searchController.searchBar.placeholder  = "Search"
        searchController.obscuresBackgroundDuringPresentation = false
        
    }
}
    // UITableViewDataSource
    
    extension AlbumsViewController: UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            10
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! AlbumsTableViewCell
            
            return cell
        }
    }
    // UITableViewDelegate
    
    extension AlbumsViewController: UITableViewDelegate {
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            70
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let detailAlbumViewController = DetailAlbumViewController()
            navigationController?.pushViewController(detailAlbumViewController, animated: true)
            
        }
    }
    
    extension AlbumsViewController: UISearchBarDelegate {
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            
            print(searchText)
        }
    }
    
    extension AlbumsViewController {
        
        private func setupConstraints() {
            NSLayoutConstraint.activate([
                tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
                tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
                tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
                tableView .bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
                
            ])
        }
    }
    
    

    
