//
//  DetailVM.swift
//  beeYouTuber
//
//  Created by Furkan Erzurumlu on 12.05.2022.
//

import Foundation

protocol DetailVMProtocol: AnyObject {
    
}

protocol DetailVMDelegate: DetailVMProtocol {
    var delegate: DetailVMDelegateOutputs? {get set}
    var lesson: Lessons? {get set}
    func getUpcomingData()
}

protocol DetailVMDelegateOutputs: AnyObject {
    func succesHeader(_response: Lessons)
}

class DetailVM: DetailVMDelegate {
    var lesson: Lessons?
    var delegate: DetailVMDelegateOutputs?
    var network: Networking = Networking()
    
    func getUpcomingData() {
        network.getUpcoming(completion: {(response) in
            guard let response = response else {
                self.lesson = response
                return
            }
            self.lesson = response
        })
    }
}
