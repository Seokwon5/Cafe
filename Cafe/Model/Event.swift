//
//  Event.swift
//  Cafe
//
//  Created by 이석원 on 2022/12/28.
//

import SwiftUI

struct Event: Identifiable {
    let id = UUID()
    
    let image: Image
    let title: String
    let description: String
    }
