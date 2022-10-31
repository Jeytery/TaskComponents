//
//  File.swift
//  
//
//  Created by Jeytery on 18.10.2022.
//

import Foundation
import UIKit

public struct ComponentInformation: Hashable, Identifiable, Codable {
    
    public var id = UUID()
    public let name: String
    public let description: String
    public let conflictedComponets: [ComponentId]?
    
    public init(name: String, description: String, conflictedComponents: [ComponentId]?) {
        self.name = name
        self.description = description
        self.conflictedComponets = conflictedComponents
    }
    
    static let empty = ComponentInformation(name: "", description: "", conflictedComponents: nil)
}

public struct ComponentId: Hashable, Codable {
    public let id: Int
    
    public static let none = ComponentId(id: -1)
    
    public init(id: Int) {
        self.id = id
    }
}

public protocol ComponentViewControllable {
    var didFinishWork: ((Componentable) -> Void)? { get set }
    func configure(data: Data)
}

public protocol Componentable: Codable {
    var information: ComponentInformation { get }
    var id: ComponentId { get }
    
    var handler: ComponentHandler { get }
    
    var input: Data? { get set }
    var outputData: String { get }
    
    var viewController: UIViewController & ComponentViewControllable { get }
}
