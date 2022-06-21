//
//  DetailVC.swift
//  beeYouTuber
//
//  Created by Furkan Erzurumlu on 12.05.2022.
//

import UIKit
import WebKit

class DetailVC: UIViewController {

    @IBOutlet weak var webViewKit: WKWebView!
    
    var viewModel: DetailVM!
    var data: Datum!
    let headerString = "<head><meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no'></head>"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //viewModel.delegate = self
        //viewModel.getUpcomingData()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "customBackground")!)
        
    }

}

extension DetailVC: DetailVMDelegateOutputs {
    func successHeader(_ type: DetailVMOutputs) {
        switch type {
        case.succes(let lessons):
            self.webViewKit.loadHTMLString(headerString + data!.icerik, baseURL: nil)
        case.error(let string):
            break
        }
    }
}
