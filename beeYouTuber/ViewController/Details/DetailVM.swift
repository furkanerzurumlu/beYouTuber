//
//  DetailVM.swift
//  beeYouTuber
//
//  Created by Furkan Erzurumlu on 12.05.2022.
//

import Foundation

protocol DetailVMProtocol: AnyObject {
    
}

protocol DetailVMDelegate: DetailVMProtocol{
    var delegate: DetailVMDelegateOutputs? {get set}
    func getUpcomingData()
}

protocol DetailVMDelegateOutputs: AnyObject{
    func successHeader(_ type: DetailVMOutputs)
}

enum DetailVMOutputs {
    case succes([Datum])
    case error(String)
}

class DetailVM: DetailVMDelegate {
    
    
    var delegate: DetailVMDelegateOutputs?
    var network: Networking = Networking()
    
    func getUpcomingData() {
        network.getUpcoming {[weak self] (response) in
            guard let response = response, let self = self
                else{
                return
            }
            self.delegate?.successHeader(.succes(response.data))
        }
    }
    func successHeader(_ type: DetailVMOutputs) {
        self.delegate?.successHeader(type)
    }
    
}
