//
//  SideMenu.swift
//  Yoam
//
//  Created by Corey Sutton on 7/2/21.
//

import SwiftUI

struct SideMenu: View {
    @State private var isShowing = false
    var body: some View {
        NavigationView {
            ZStack {
                if isShowing {
                    SideMenuView()
                }
                HomeView()
                    .offset(x: isShowing ? 300:0, y: 0)
                    .navigationBarItems(leading: Button(action: {isShowing.toggle()}, label: {
                        Image(systemName: "list.bullet")
                            .foregroundColor(.black)
                    }))
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        SideMenu()
            
    }
}

struct HomeView: View {
    var body: some View {
        ZStack {
            ContentView()
        }
        
    }
}
