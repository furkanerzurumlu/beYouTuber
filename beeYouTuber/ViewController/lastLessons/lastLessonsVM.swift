//
//  lastLessonsVM.swift
//  beeYouTuber
//
//  Created by Furkan Erzurumlu on 2.05.2022.
//

import Foundation

protocol lastLessonsVMProtocol : AnyObject {
    
}

protocol lastLessonsVMDelegate : lastLessonsVMProtocol {
    var delegate : lastLessonsVMDelegateOutputs? {get set}
    var Data : [Datum] {get set}
    func getUpcomingData()
}

protocol lastLessonsVMDelegateOutputs : AnyObject {
    func succesHeader(_ type: lastLessonsVMOutputs)
    func reloadTableView()
}

enum lastLessonsVMOutputs {
    case succes([Datum])
    case error(String)
}


class lastLessonsVM : lastLessonsVMDelegate {
    var delegate: lastLessonsVMDelegateOutputs?
    var Data: [Datum] = []
    var network: Networking = Networking()
    
    func getUpcomingData() {
        network.getUpcoming{[weak self] (response) in
            guard let response = response, let self = self else {
                return
            }
            self.Data = response.data
            self.delegate?.succesHeader(.succes(response.data))
            self.delegate?.reloadTableView()
            
        }
    }
    
    private func succesHeader(_ type: lastLessonsVMOutputs){
        self.delegate?.succesHeader(type)
    }
    
}
