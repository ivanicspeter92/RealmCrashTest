//
//  ChoicelyVideo.swift
//  Choicely
//
//  Created by Jesse Vartiainen on 15/12/2016.
//  Copyright © 2016 Choicely. All rights reserved.
//

import Foundation
import RealmSwift

class ChoicelyVideo: Object {
    @objc dynamic var videoID: String? // comes as an Int from the API
    @objc dynamic var source: String?
    // TODO: what does this mean in the data?
    @objc dynamic var fileExtension: String?
    @objc dynamic var duration: Int = 0
    @objc dynamic var user: User?
    @objc dynamic var created: Date?
    @objc dynamic var small: VideoSource?
    @objc dynamic var medium: VideoSource?
    @objc dynamic var large: VideoSource?
    @objc dynamic var embedded: String?

    
    var bestVideoSource: VideoSource? {
        return large ?? medium ?? small
    }
    
    var worstVideoSource: VideoSource? {
        return small ?? medium ?? large
    }
    
    @objc override static func primaryKey() -> String? {
        return "videoID"
    }
}
