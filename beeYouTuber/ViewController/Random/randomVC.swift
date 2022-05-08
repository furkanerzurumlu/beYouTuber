//
//  randomVC.swift
//  beYoutuber
//
//  Created by Furkan Erzurumlu on 3.03.2022.
//

import UIKit

class randomVC: UIViewController {

    
    @IBOutlet weak var randomLessonsImageView: UIImageView!
    @IBOutlet weak var randomLessonsText: UITextView!
    
    var viewModel: randomVM!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.delegate = self
        viewModel.getUpcomigData()

        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "customBackground")!)
    }
    
}

extension randomVC: randomVMDelegateOutputs {
    func successHeader(_ type: randomVMOutputs) {
        switch type {
        case .succes(let lessons):
            let data = lessons.randomElement()
            self.randomLessonsText.text = data?.icerik.html2String
        case .error(let string):
            break
        }
    }
}



