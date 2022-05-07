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
    
    func showLessons(navigationController: UINavigationController?){
        let lessonsVC = lessonsVC.instantiate(storyboard: .lessons)
        let viewModel = lessonsVM()
        lessonsVC.viewModel = viewModel
        navigationController?.pushViewController(lessonsVC, animated: true)
    }
    func showLastLessons(navigationController: UINavigationController?){
        let lastLessonsVC = lastLessonsVC.instantiate(storyboard: .lastLessons)
        let viewModel = lastLessonsVM()
        lastLessonsVC.viewModel = viewModel
        navigationController?.pushViewController(lastLessonsVC, animated: true)
    }
    func showRandom(navigationController: UINavigationController?) {
        let randomVC = randomVC.instantiate(storyboard: .random)
        navigationController?.pushViewController(randomVC, animated: true)
    }
    func showDeveloper(navigationController: UINavigationController?){
        let developerVC = developerVC.instantiate(storyboard: .developer)
        navigationController?.pushViewController(developerVC, animated: true)
    }
    func showAbout(navigationController: UINavigationController?){
        let aboutVC = aboutVC.instantiate(storyboard: .about)
        navigationController?.pushViewController(aboutVC, animated: true)
    }
}
