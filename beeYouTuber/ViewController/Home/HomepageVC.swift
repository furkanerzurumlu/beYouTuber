//
//  ViewController.swift
//  beYoutuber
//
//  Created by Furkan Erzurumlu on 3.03.2022.
//

import UIKit

final class HomepageVC: UIViewController {

    @IBOutlet private var allButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Ana Sayfa"
        configureButtons()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "customBackground")!)
    }
    
    private func configureButtons(){
        allButtons.forEach { buton in
            buton.layer.borderWidth = 3
            buton.layer.borderColor = UIColor.brown.cgColor
            buton.layer.cornerRadius = 10
        }
    }
    
    @IBAction private func lessonsButton(_ sender: Any) {
        Router.shared.showLessons(navigationController: self.navigationController)
    }
    
    @IBAction func lastLessonsButton(_ sender: Any) {
        Router.shared.showLastLessons(navigationController: self.navigationController)
    }
    
    @IBAction func randomButton(_ sender: Any) {
        Router.shared.showRandom(navigationController: self.navigationController)
    }
    
    @IBAction func shareButton(_ sender: Any) {
        let objectsToShare = [String("Hi")]
        let activityController = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
        present(activityController, animated: true, completion: nil)
    }
    
    @IBAction func aboutButton(_ sender: Any) {
        Router.shared.showAbout(navigationController: self.navigationController)
    }
    
    @IBAction func developerButton(_ sender: Any) {
        Router.shared.showDeveloper(navigationController: self.navigationController)
    }
    
    
    
    
    
}
