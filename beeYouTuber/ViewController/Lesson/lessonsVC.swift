//
//  lessonsVC.swift
//  beYoutuber
//
//  Created by Furkan Erzurumlu on 3.03.2022.
//

import UIKit

class lessonsVC: UIViewController {
    
    @IBOutlet weak var lessonsTableView: UITableView!
    
    var viewModel: lessonsVM!
    private var data: [Datum] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "customBackground")!)
        //viewModel.delegate = self
        //viewModel.getUpcomingData()
        lessonsTableView.delegate = self
        lessonsTableView.dataSource = self
        lessonsTableView.separatorStyle = .none
        lessonsTableView.showsVerticalScrollIndicator = false
        
    
    }
}
extension lessonsVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = lessonsTableView.dequeueReusableCell(withIdentifier: "lessonsCell", for: indexPath) as! lessonsTableViewCell
        cell.setName(data: data[indexPath.row])
        return cell
        
    }
    
    
}
extension lessonsVC: lessonsVMDelegateOutputs {
    func successHeader(_ type: lesoonsVMOutputs) {
        switch type {
        case .succes(let lessons):
            self.data = lessons
      
        case .error(let string):
            break
        }
    }

    func reloadTableView() {
        lessonsTableView.reloadData()
    }
    
    
}
