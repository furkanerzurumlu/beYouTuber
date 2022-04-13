//
//  Router.swift
//  beeYouTuber
//
//  Created by Furkan Erzurumlu on 13.04.2022.
//

import Foundation
import UIKit

final class Router {
    
    static var shared: Router = Router()
    
    func showRandom(navigationController: UINavigationController?) {
        let randomVC = randomVC.instantiate(storyboard: .random)
        navigationController?.pushViewController(randomVC, animated: true)
    }
}
