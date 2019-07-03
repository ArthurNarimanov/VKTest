//
//  Typealiases.swift
//  VKTest
//
//  Created by Ram on 11/06/2019.
//  Copyright © 2019 Arthur Narimanov. All rights reserved.
//

import Foundation

typealias StaticCellProtocol = NibLoadable & HeightContainable 
typealias ItemClosure<T> = ((T) -> Void)
typealias VoidClosure = () -> Void
