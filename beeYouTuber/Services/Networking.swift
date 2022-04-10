//
//  Networking.swift
//  beeYouTuber
//
//  Created by Furkan Erzurumlu on 4.03.2022.
//
import UIKit
import Alamofire

class AlamofireNetworking {
    var response : Lessons?
    
    func fetchLessons(){
        AF.request("https://furkansandal.com/youtuber_app/show_json.php")
            .validate()
            .responseDecodable(of: Lessons.self)
    }
}
