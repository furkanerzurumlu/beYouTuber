//
//  developerVC.swift
//  beYoutuber
//
//  Created by Furkan Erzurumlu on 3.03.2022.
//

import UIKit


class developerVC: UIViewController {

    @IBOutlet weak var developerImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "customBackground")!)
        developerImage.layer.cornerRadius = 50
    }
    
    @IBAction func githubLink(_ sender: Any) {
        if let url = URL(string: "https://github.com/furkanerzurumlu") {
            UIApplication.shared.open(url)
        }
    }
    
  

}
