//
//  VideoSource.swift
//  Choicely
//
//  Created by Peter Ivanics on 20/06/2017.
//  Copyright © 2017 Choicely. All rights reserved.
//

import Realm
import RealmSwift

class VideoSource: Object {
    @objc dynamic var width: Int = 0
    @objc dynamic var height: Int = 0
    @objc dynamic var link: String?
    @objc dynamic var fps: Int = 0
    
    //MARK: Initializers
    required init(realm: RLMRealm, schema: RLMObjectSchema) {
        super.init(realm: realm, schema: schema)
    }
    
    required init() {
        super.init()
    }
    
    required init(value: Any, schema: RLMSchema) {
        super.init(value: value, schema: schema)
    }
    
    convenience init(link: String?) {
        self.init()
        self.link = link
    }
}
