//
//  randomVM.swift
//  beeYouTuber
//
//  Created by Furkan Erzurumlu on 8.05.2022.
//

import Foundation

protocol randomVMProtocol: AnyObject{
    
}

protocol randomVMDelegate: randomVMProtocol{
    var delegate: randomVMDelegateOutputs? {get set}
    func getUpcomigData()
}

protocol randomVMDelegateOutputs: AnyObject{
    func successHeader(_ type: randomVMOutputs)
    
}

enum randomVMOutputs {
    case succes([Datum])
    case error(String)
}

class randomVM: randomVMDelegate {
        
   
    var delegate: randomVMDelegateOutputs?
    var network: Networking = Networking()
    
    
    func getUpcomigData() {
        network.getUpcoming {[weak self ] (response) in
            guard let response = response, let self = self else {
                return
            }
            self.delegate?.successHeader(.succes(response.data))

        }
    }

    
    
    
    private func successHeader(_ tpye: randomVMOutputs) {
        self.delegate?.successHeader(tpye)
    }
    
    
}
