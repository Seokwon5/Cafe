//
//  User.swift
//  Cafe
//
//  Created by 이석원 on 2022/12/28.
//

import Foundation

struct User {
    let username: String
    let account: String
    
    static let shared = User(username: "석원", account: "fast.campus")
}
