//
//  Networking.swift
//  beeYouTuber
//
//  Created by Furkan Erzurumlu on 4.03.2022.
//
import UIKit
import Alamofire

//class Networking{
//
//    static let upComing = "https://apps.furkansandal.com/youtuber_app_v1/show_json_ercument.php"
//
//    func getUpcoming( completion: @escaping (Lessons?, String?)->()){
//        let request = AF.request(Networking.upComing)
//            .validate()
//            request.responseDecodable(of: Lessons.self) {[weak self ] (response) in
//
//
//
//
//            guard let lessons = response.value else{
//                completion(nil, response.error?.localizedDescription)
//                return
//            }
//            completion(lessons,nil)
//        }
//    }
//}

class Networking {
    func getUpcoming( completion: @escaping (Lessons? , String ) -> Void) {
        
        AF.request("https://apps.furkansandal.com/youtuber_app_v1/show_json_ercument.php")
        .validate()
        .responseDecodable(of: Lessons.self) { [weak self] (response) in
            if let Lessons = response.value {
                completion(Lessons , "")
            } else {
                completion(nil, response.error?.localizedDescription ?? "")
            }
        }
    }
}
