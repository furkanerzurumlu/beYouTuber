//
//  Lessons.swift
//  beeYouTuber
//
//  Created by Furkan Erzurumlu on 10.04.2022.
//

import Foundation

// MARK: - Lessons
struct Lessons: Codable {
    let datum: [Datum]
    let marketlinki: String
}

// MARK: - Datum
struct Datum: Codable {
    let id: Int
    let icon: String
    let baslik, icerik: String
}
