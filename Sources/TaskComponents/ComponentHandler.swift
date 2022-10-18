//
//  File.swift
//  
//
//  Created by Jeytery on 18.10.2022.
//

import Foundation
import UIKit

public protocol ComponentHandler {}

public protocol AppearComponentHandler: ComponentHandler {
    func shouldAppear(data: Data) -> Bool
}

public protocol ViewComponentHandler: ComponentHandler {
    func view(data: Data) -> UIView
}

public protocol DataComponentHandler: ComponentHandler {
    func data(for data: Data) -> Data
}

