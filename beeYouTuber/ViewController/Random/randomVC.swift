//
//  randomVC.swift
//  beYoutuber
//
//  Created by Furkan Erzurumlu on 3.03.2022.
//

import UIKit
import WebKit

class randomVC: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var webViewKit: WKWebView!
    
    var viewModel: randomVM!
    var data: Datum!
    let headerString = "<head><meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no'></head>"
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.delegate = self
        viewModel.getUpcomingData()

        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "customBackground")!)
    
    }
    
}

extension randomVC: randomVMDelegateOutputs {
    func successHeader(_ type: randomVMOutputs) {
        switch type {
        case .succes(let lessons):
            let data = lessons.randomElement()
            self.webViewKit.loadHTMLString(headerString + data!.icerik, baseURL: nil)
        case .error(let string):
            break
        }
    }
}



