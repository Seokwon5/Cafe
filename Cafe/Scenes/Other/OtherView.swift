//
//  OtherView.swift
//  Cafe
//
//  Created by 이석원 on 2022/12/29.
//

import SwiftUI

struct OtherView: View {
    init() {
        UITableView.appearance().backgroundColor = .systemBackground
    }
    var body: some View {
        NavigationView {
            List {
                ForEach(Menu.allCases) { section in
                    Section(
                        header: Text(section.title)
                       ) {
                            ForEach(section.menu, id: \.hashValue) { raw in
                               NavigationLink(raw, destination: Text("\(raw)"))
                            }
                    }
                }
            }
                .listStyle(GroupedListStyle())
                .navigationTitle("Other")
                .toolbar {
                    NavigationLink(destination: SettingView(),
                                   label: {
                        Image(systemName: "gear")
                    })
            }
        }
    }
}

struct OtherView_Previews: PreviewProvider {
    static var previews: some View {
        OtherView()
    }
}
