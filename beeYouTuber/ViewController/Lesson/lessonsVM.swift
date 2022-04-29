//
//  lessonsVM.swift
//  beeYouTuber
//
//  Created by Furkan Erzurumlu on 15.04.2022.
//

import Foundation

protocol lessonsVMProtocol: AnyObject{
    
}

protocol lessonsVMDelegate: lessonsVMProtocol{
    var delegate: lessonsVMDelegateOutputs? {get set}
    var Data: [Datum]  {get set}
    func getUpcomingData()
}

protocol lessonsVMDelegateOutputs: AnyObject{
    func successHeader(_ type: lesoonsVMOutputs)
    func reloadTableView()
}

enum lesoonsVMOutputs {
    case succes([Datum])
    case error(String)
}


class lessonsVM : lessonsVMDelegate {
    var Data: [Datum] = []
    var delegate: lessonsVMDelegateOutputs?
    var network: Networking = Networking()
    
    

    
    func getUpcomingData() {
        network.getUpcoming {[weak self ] (response) in
            guard let response = response, let self = self else {
                return
            }
            self.Data = response.data
            self.delegate?.successHeader(.succes(response.data))
            self.delegate?.reloadTableView()

        }
    }
    
    private func successHeader(_ tpye: lesoonsVMOutputs) {
        self.delegate?.successHeader(tpye)
    }
}
