//
//  File.swift
//  
//
//  Created by Jeytery on 18.10.2022.
//

import Foundation
import UIKit

public struct ComponentInformation {
    public let name: String
    public let description: String
    public let icon: UIImage
    public let color: UIColor
    public let conflictedComponets: [ComponentId]?
}

public struct ComponentId {
    public let id: Int
    
    public static let none = ComponentId(id: -1)
}

public protocol ComponentViewControllable {
    func configure(data: Data)
}

public protocol Componentable {
    var information: ComponentInformation { get }
    var id: ComponentId { get }
    
    var handler: ComponentHandler { get }
    
    var input: Data? { get set }
    var outputData: String { get }
    
    var viewController: UIViewController & ComponentViewControllable { get }
}
