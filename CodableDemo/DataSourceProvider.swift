//
//  DataSourceProvider.swift
//  CodableDemo
//
//  Created by Gagandeep Kaur Swaitch on 1/8/19.
//  Copyright © 2019 Gagandeep Kaur Swaitch. All rights reserved.
//

import UIKit

class DataSourceProvider: NSObject, UITableViewDelegate, UITableViewDataSource {
      var cars = [Car]()
    override init() {
        super.init()
        getJson()
    }
    
    
    func getJson() {
        if let path = Bundle.main.path(forResource: "ExampleData", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                parse(json: data)
            } catch {
                
            }
        }
    }
    
    
    func parse(json: Data)  {
        let decoder = JSONDecoder()
        
        if let jsonCars = try? decoder.decode(Cars.self, from: json)
        {
            cars = jsonCars.results
        }
    }
    
    
    // MARK: Table view datasource and delegate
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      

        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CarDetailsCell
        cell.carModelLabel.text = cars[indexPath.row].title
        cell.saleIdLabel.text = String(cars[indexPath.row].saleId)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100;
    }
    
}




