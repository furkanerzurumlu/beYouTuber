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
    var lesson: Lessons? {get set}
    func getUpcomingData()
}

protocol lessonsVMDelegateOutputs: AnyObject{
    //func successHeader(_response: Lessons)
    func reloadTableView()
}


class lessonsVM : lessonsVMDelegate {
    var lesson: Lessons?
    var delegate: lessonsVMDelegateOutputs?
    var network: Networking = Networking()
    
    
    func getUpcomingData() {
        network.getUpcoming {[weak self] (lesson , err) in
            if let lesson = lesson {
                self?.lesson = lesson
            }
            self?.delegate?.reloadTableView()
        }
    }
//    func getUpcomingData() {
//        network.getUpcoming(completion: {(response, error) in
//            guard let response = response else {
//                self.lesson = response
//
//                return
//            }
//            self.delegate?.reloadTableView()
//
//        })
//    }
//    private func successHeader(_ response: Lessons) {
//        self.delegate?.successHeader(_response: response)
//    }
}
