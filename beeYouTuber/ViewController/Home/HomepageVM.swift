//
//  HomepageVM.swift
//  beeYouTuber
//
//  Created by Furkan Erzurumlu on 14.04.2022.
//

import Foundation

protocol HomepageVMProtocol: AnyObject{
    
}

protocol HomepageVMDelegate: HomepageVMProtocol{
    var delegate: HomepageVMDelegateOutputs? {get set}
    var lesson: Lessons? {get set}
    func getUpcomingData()
}

protocol HomepageVMDelegateOutputs: AnyObject{
    func successHeader(_response: Lessons)
    func reloadTableView()
}


class HomepageVM : HomepageVMDelegate {
    var lesson: Lessons?
    var delegate: HomepageVMDelegateOutputs?
    var network: Networking = Networking()
    
    func getUpcomingData() {
        network.getUpcoming(completion: {(response, error) in
            guard let response = response else {
                self.lesson = response
                return
            }
            self.lesson = response
            self.delegate?.reloadTableView()
        })
    }
}
