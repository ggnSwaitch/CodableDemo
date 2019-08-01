//
//  ViewController.swift
//  CodableDemo
//
//  Created by Gagandeep Kaur Swaitch on 31/7/19.
//  Copyright © 2019 Gagandeep Kaur Swaitch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var carDetailsTableView: UITableView!
    var dataSourceProvider = DataSourceProvider()
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        self.carDetailsTableView.dataSource = dataSourceProvider
        self.carDetailsTableView.delegate = dataSourceProvider
    }
    
  
    
}
