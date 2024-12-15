//
//  Anime.swift
//  PublicApi
//
//  Created by Aslan  on 15.12.2024.
//

import Foundation
import SwiftyJSON

struct Anime {
    var title = ""
    var image_url = ""
    var status = ""
    var episodes = ""
    var embed_url = ""
    
    init(json:JSON) {
        if let item = json["title"].string{
            title = item
        }
        if let item = json["images"]["jpg"]["image_url"].string{
            image_url = item
        }
        if let item = json["status"].string{
            status = item
        }
        if let item = json["episodes"].int{
            episodes = "Эпизодов: \(item)"
        }
        if let item = json["trailer"]["url"].string{
            embed_url = item
        }
    }
}
