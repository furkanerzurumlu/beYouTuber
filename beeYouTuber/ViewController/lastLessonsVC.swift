//
//  lastLessonsVc.swift
//  beYoutuber
//
//  Created by Furkan Erzurumlu on 3.03.2022.
//

import UIKit

class lastLessonsVC: UIViewController {
    
    @IBOutlet weak var lastLessonsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "customBackground")!)
                
        lastLessonsTableView.delegate = self
        lastLessonsTableView.dataSource = self
        
        
        lastLessonsTableView.separatorStyle = .none
        lastLessonsTableView.showsVerticalScrollIndicator = false
        
    }
}

extension lastLessonsVC : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = lastLessonsTableView.dequeueReusableCell(withIdentifier: "lastLessonsCell", for: indexPath)
        return cell
        
    }
    
    
}
