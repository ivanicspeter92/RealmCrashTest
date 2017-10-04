//
//  DataManager.swift
//  RealmTest
//
//  Created by Peter Ivanics on 26/09/2017.
//  Copyright © 2017 Peter Ivanics. All rights reserved.
//

import RealmSwift

class DataManager {
    static var shared: DataManager = DataManager()
    
    private init() {
    }
    
    func insertOrUpdate(object: Object) {
        do {
            let realm = try Realm()
            
            try realm.write {
                realm.add(object, update: true) // crash here: Target table row index out of range
                print("Added \(object)")
            }
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func insertOrUpdate(objects: [Object]) {
        do {
            let realm = try Realm()
            
            try realm.write {
                realm.add(objects, update: true) // crash here: Target table row index out of range
                print("Added \(objects)")
            }
        } catch let error {
            print(error.localizedDescription)
        }
    }
}
