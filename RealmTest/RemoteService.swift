//
//  RemoteService.swift
//  RealmTest
//
//  Created by Peter Ivanics on 04/10/2017.
//  Copyright © 2017 Peter Ivanics. All rights reserved.
//

import Alamofire

class RemoteService {
    static var shared: RemoteService = RemoteService()
    
    private init() {
    }
    
    func testRequest() {
        Alamofire.request("https://test.test/test", method: HTTPMethod.post, parameters: [:], encoding: URLEncoding.default, headers: nil).responseJSON { (response) in // the request naturally fails in this scenario but in our real app a JSON is retrieved
            
            let user = User() // these objects are built up from the retrieved JSON
            user.id = "123"
            user.name = "Peter"
            
            let image = Image()
            image.imageID = "blablablbal-balbal"
            image.imageThumbData = Data()
            image.createdAt = Date()
            image.imageDescription = "Test"
            image.author = user
            
            let image2 = Image()
            image2.imageID = "yrew87v564v3534-dsa432b5"
            image2.imageThumbData = Data()
            image2.createdAt = Date()
            image2.imageDescription = "Test 2"
            image2.author = user
            
            // on the same thread the object or objects are stored via the insertOrUpdate() function
            //        DataManager.shared.insertOrUpdate(object: image)
            DataManager.shared.insertOrUpdate(objects: [image, image2])
        }
    }
}
