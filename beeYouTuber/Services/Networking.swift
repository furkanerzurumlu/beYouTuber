//
//  Networking.swift
//  beeYouTuber
//
//  Created by Furkan Erzurumlu on 4.03.2022.
//
import UIKit
import Alamofire

class Networking{
    
    static let upComing = "https://apps.furkansandal.com/youtuber_app_v1/show_json_ercument.php"
    
    func getUpcoming(completion: @escaping (Lessons?, String?)->()){
        let request = AF.request(Networking.upComing)
        request.responseDecodable(of: Lessons.self) { (response) in
            guard let lessons = response.value else{
                completion(nil, response.error?.localizedDescription)
                return
            }
            completion(lessons,nil)
        }
    }
}

