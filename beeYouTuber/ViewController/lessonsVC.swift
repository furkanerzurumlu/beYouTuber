//
//  lessonsVC.swift
//  beYoutuber
//
//  Created by Furkan Erzurumlu on 3.03.2022.
//

import UIKit

class lessonsVC: UIViewController {
    
    @IBOutlet weak var lessonsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lessonsTableView.delegate = self
        lessonsTableView.dataSource = self
        
        lessonsTableView.separatorStyle = .none
        lessonsTableView.showsVerticalScrollIndicator = false
        
    }
}
extension lessonsVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 11
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = lessonsTableView.dequeueReusableCell(withIdentifier: "lessonsCell", for: indexPath)
        return cell
        
    }
    
    
}
