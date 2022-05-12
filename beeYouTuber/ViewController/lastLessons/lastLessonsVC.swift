//
//  lastLessonsVc.swift
//  beYoutuber
//
//  Created by Furkan Erzurumlu on 3.03.2022.
//

import UIKit

class lastLessonsVC: UIViewController {
    
    @IBOutlet weak var lastLessonsTableView: UITableView!
    
    var viewModel: lastLessonsVM!
    private var data: [Datum] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "customBackground")!)
    
        viewModel.delegate = self
        viewModel.getUpcomingData()
        
        
        lastLessonsTableView.delegate = self
        lastLessonsTableView.dataSource = self
        
        
        lastLessonsTableView.separatorStyle = .none
        lastLessonsTableView.showsVerticalScrollIndicator = false
        
    }
}

extension lastLessonsVC : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.Data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = lastLessonsTableView.dequeueReusableCell(withIdentifier: "lastLessonsCell", for: indexPath) as! lastLessonsTableViewCell
        cell.lastLessonsDataUpdate(data: (viewModel.Data[indexPath.row]))
        cell.selectionStyle = .none
        return cell
    }
    
}

extension lastLessonsVC: lastLessonsVMDelegateOutputs {
   
    func succesHeader(_ type: lastLessonsVMOutputs) {
        switch type {
        case .succes(let lessons):
            self.data = lessons
            lastLessonsTableView.reloadData()
        case .error(let string):
            break
        }
    }
    func reloadTableView() {
        lastLessonsTableView.reloadData()
    }
}
