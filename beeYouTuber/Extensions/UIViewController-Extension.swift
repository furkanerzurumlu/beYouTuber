//
//  UIViewController-Extension.swift
//  beYoutuber
//
//  Created by Furkan Erzurumlu on 3.03.2022.
//

import UIKit

public enum StoryboardNames: String {
    case main = "Main"
    case lessons = "lessons"
    case lastLessons = "lastLessons"
    case random = "random"
    case share = "share"
    case about = "about"
    case developer = "developer"
    
    // Add storyboard name
   
    
   
}

protocol StoryboardSettings {
    var storyboardName: StoryboardNames { get set }
}

extension UIViewController: StoryboardSettings {
    var storyboardName: StoryboardNames {
        get {
            return storyboardName
        }
        set {
            storyboardName = newValue
        }
    }
    
    
}

public extension UIViewController {
    /// SwifterSwift: Instantiate UIViewController from storyboard.
    ///
    /// - Parameters:
    ///   - storyboard: Name of the storyboard where the UIViewController is located.
    ///   - bundle: Bundle in which storyboard is located.
    ///   - identifier: UIViewController's storyboard identifier.
    /// - Returns: Custom UIViewController instantiated from storyboard.
    
    class func instantiate(storyboard: StoryboardNames = StoryboardNames.main, bundle: Bundle? = nil, identifier: String? = nil) -> Self {
        let viewControllerIdentifier = identifier ?? String(describing: self)
        let storyboard = UIStoryboard(name: storyboard.rawValue, bundle: bundle)
        guard let viewController = storyboard
            .instantiateViewController(withIdentifier: viewControllerIdentifier) as? Self else {
            preconditionFailure(
                "Unable to instantiate view controller with identifier \(viewControllerIdentifier) as type \(type(of: self))")
        }
        return viewController
    }
}
public extension UIViewController {
    
}