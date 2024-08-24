//
//  User.swift
//  iostableviewcustomcellstudy
//
//  Created by kenan on 24.08.2024.
//

import Foundation

class User{
    var user_id:Int?
    var user_name:String?
    var user_phone:String?
    
    init(){
        
    }
    
    init(user_id: Int? = nil, user_name: String? = nil, user_phone: String? = nil) {
        self.user_id = user_id
        self.user_name = user_name
        self.user_phone = user_phone
    }
}
