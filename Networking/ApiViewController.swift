//
//  ApiViewController.swift
//  Networking
//
//  Created by Сергей on 19.05.2018.
//  Copyright © 2018 Сергей. All rights reserved.
//

import UIKit
import Foundation
import RealmSwift
import Alamofire


class ApiViewController: UIViewController {
    
    @IBOutlet var tableView:UITableView!
    
    let url = "https://jsonplaceholder.typicode.com/posts"
    let answer = [ApiAnswer]()
    func loadData() {
        
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        
        Alamofire.request(url).responseDecodableObject(queue: nil, keyPath: "response", decoder: decoder) { (result: DataResponse() in
            guard let answer = result.value else {
                return
            }
            
            self.tableView.reloadData()
        }
        
        
        
        
        
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
registerCell()
      
    }
    

    

    private func registerCell () {
        let nib = UINib(nibName: "ApiTableViewCell", bundle: .main)
        tableView.register(nib, forCellReuseIdentifier: "ApiTableViewCell")
}
    
}

extension ApiViewController:UITableViewDelegate {
    
}
extension ApiViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}
