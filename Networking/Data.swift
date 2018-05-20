//
//  Data.swift
//  Networking
//
//  Created by Сергей on 19.05.2018.
//  Copyright © 2018 Сергей. All rights reserved.
//

import Foundation
import RealmSwift
import Realm
class ApiAnswer:Object,Codable {
   @objc dynamic var id:String = ""
    @objc dynamic var userId:String = ""
    @objc dynamic var title:String = ""
    @objc dynamic var body:String = ""
    convenience init(id:String,userId:String, title:String, body:String){
        self.init()
        self.id = id
        self.userId = userId
        self.title = title
        self.body = body
    }
    enum Codingcase: String, CodingKey {
        case Id = "id"
        case userId = "userId"
        case title = "title"
        case body = "body"
    }
    
   
    
}
