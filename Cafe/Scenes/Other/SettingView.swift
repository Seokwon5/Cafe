//
//  SettingView.swift
//  Cafe
//
//  Created by 이석원 on 2023/01/02.
//

import SwiftUI

struct SettingView : View {
    var body: some View{
        List {
            Section {
                SettingUserInfojSectionView()
            }
            Button("회원 정보 수정") {}
                .tint(.black)
            Button("회원 탈퇴") {}
                .tint(.black)
        }
        .navigationTitle("설정")
        .listStyle(GroupedListStyle())
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SettingUserInfojSectionView: View {
    var body: some View{
        HStack {
            VStack(alignment: .leading, spacing: 4.0) {
                Text(User.shared.username)
                    .font(.title)
                Text(User.shared.account)
                    .font(.caption)
            }
            Spacer()
            Button(action: {}) {
                Text("로그아웃")
                    .tint(.green)
                    .font(.system(size: 14.0, weight: .bold, design:  .default))
            }
            .padding(8.0)
            .overlay(Capsule().stroke(Color.green))
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View{
        SettingView()
    }
}
