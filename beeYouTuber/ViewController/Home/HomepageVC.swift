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
        //configureButtons()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "customBackground")!)
    }
    
    
    private func configureButtons(){
        /*
        for buttons in allButtons{
            buttons.layer.borderWidth = 3
            buttons.layer.borderColor = UIColor.brown.cgColor
            buttons.layer.cornerRadius = 10
        }
         */
        
        allButtons.forEach { buton in
            buton.layer.borderWidth = 3
            buton.layer.borderColor = UIColor.brown.cgColor
            buton.layer.cornerRadius = 10
        }
    }
    
    @IBAction private func lessonsButton(_ sender: Any) {
        let lessonsVC = lessonsVC.instantiate(storyboard: .lessons)
        self.navigationController?.pushViewController(lessonsVC, animated: true)
    }
    
    @IBAction func lastLessonsButton(_ sender: Any) {
        let lastLessonsVC = lastLessonsVC.instantiate(storyboard: .lastLessons)
        self.navigationController?.pushViewController(lastLessonsVC, animated: true)
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
        let aboutVC = aboutVC.instantiate(storyboard: .about)
        self.navigationController?.pushViewController(aboutVC, animated: true)
    }
    
    @IBAction func developerButton(_ sender: Any) {
        let developerVC = developerVC.instantiate(storyboard: .developer)
        self.navigationController?.pushViewController(developerVC, animated: true)
    }
    
    
    
    
    
}
