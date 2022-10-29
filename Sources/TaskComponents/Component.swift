//
//  File.swift
//  
//
//  Created by Jeytery on 18.10.2022.
//

import Foundation
import UIKit

public struct ComponentInformation: Hashable, Identifiable {
    
    public let id = UUID()
    
    public let name: String
    public let description: String
    public let icon: UIImage
    public let color: UIColor
    public let conflictedComponets: [ComponentId]?
    
    public init(name: String, description: String, icon: UIImage, color: UIColor, conflictedComponents: [ComponentId]?) {
        self.name = name
        self.description = description
        self.icon = icon
        self.color = color
        self.conflictedComponets = conflictedComponents
    }
    
    static let empty = ComponentInformation(name: "", description: "", icon: UIImage(), color: .red, conflictedComponents: nil)
}

public struct ComponentId: Hashable {
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

public protocol Componentable {
    var information: ComponentInformation { get }
    var id: ComponentId { get }
    
    var handler: ComponentHandler { get }
    
    var input: Data? { get set }
    var outputData: String { get }
    
    var viewController: UIViewController & ComponentViewControllable { get }
}
