//
//  Car.swift
//  CodableDemo
//
//  Created by Gagandeep Kaur Swaitch on 31/7/19.
//  Copyright © 2019 Gagandeep Kaur Swaitch. All rights reserved.
//

import Foundation

struct Car: Codable {
    var title: String
    var saleId: Int
    var details: [CarDetails]
}
