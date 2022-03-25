//
//  ViewController.swift
//  beYoutuber
//
//  Created by Furkan Erzurumlu on 3.03.2022.
//

import UIKit

class HomepageVC: UIViewController {

    @IBOutlet var allButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureButtons()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "customBackground")!)
    }
    
    
    func configureButtons(){
        for buttons in allButtons{
            buttons.layer.borderWidth = 3
            buttons.layer.borderColor = UIColor.brown.cgColor
            buttons.layer.cornerRadius = 10
        }
        
    }
    @IBAction func lessonsButton(_ sender: Any) {
        let lessonsVC = lessonsVC.instantiate(storyboard: .lessons, bundle: nil, identifier: nil)
        self.navigationController?.pushViewController(lessonsVC, animated: true)
    }
    @IBAction func lastLessonsButton(_ sender: Any) {
        let lastLessonsVC = lastLessonsVC.instantiate(storyboard: .lastLessons, bundle: nil, identifier: nil)
        self.navigationController?.pushViewController(lastLessonsVC, animated: true)
    }
    @IBAction func randomButton(_ sender: Any) {
        let randomVC = randomVC.instantiate(storyboard: .random, bundle: nil, identifier: nil)
        self.navigationController?.pushViewController(randomVC, animated: true)
    }
    @IBAction func shareButton(_ sender: Any) {
        
        let objectsToShare = [String("Hi")]
        let activityController = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
        present(activityController, animated: true, completion: nil)
 
    }
    @IBAction func aboutButton(_ sender: Any) {
        let aboutVC = aboutVC.instantiate(storyboard: .about, bundle: nil, identifier: nil)
        self.navigationController?.pushViewController(aboutVC, animated: true)
    }
    @IBAction func developerButton(_ sender: Any) {
        let developerVC = developerVC.instantiate(storyboard: .developer, bundle: nil, identifier: nil)
        self.navigationController?.pushViewController(developerVC, animated: true)
    }
    
    
    
    
    
}
