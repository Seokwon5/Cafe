//
//  HomeViewModel.swift
//  Cafe
//
//  Created by 이석원 on 2023/01/04.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var isNeedToReload = false {
        didSet {
            guard isNeedToReload else { return }
            
            coffeeMenu.shuffle()
            events.shuffle()
            
            isNeedToReload = false
        }
    }
    
    @Published var coffeeMenu: [CoffeeMenu] = [
        CoffeeMenu(image: Image("coffee"), name: "아메리카노"),
        CoffeeMenu(image: Image("coffee"), name: "카페라떼"),
        CoffeeMenu(image: Image("coffee"), name: "녹차라떼"),
        CoffeeMenu(image: Image("coffee"), name: "자바칩"),
        CoffeeMenu(image: Image("coffee"), name: "망고 바나나"),
        CoffeeMenu(image: Image("coffee"), name: "민트 블랜디 티")

    ]
    
    @Published var events: [Event] = [
        Event(image: Image("coffee"), title: "제주도 한정 메뉴", description: "제주도 한정 메뉴가 출시되었습니다."),
        Event(image: Image("coffee"), title: "앱 회원 쿠폰 증정", description: "매장에서 주문시 아메리카노 공짜!")
    ]
    
}
