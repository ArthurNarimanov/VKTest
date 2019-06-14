//
//  CellHeaderProtocol.swift
//  VKTest
//
//  Created by Ram on 14/06/2019.
//  Copyright © 2019 Arthur Narimanov. All rights reserved.
//

import Foundation

protocol CellHeaderProtocol {
    //ginerik protocol
    associatedtype cellType
    
    var cellModels: [cellType] { get }
}
