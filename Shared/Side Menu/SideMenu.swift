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
                    SideMenuView(isShowing: $isShowing)
                }
                HomeView()
                    .cornerRadius(isShowing ? 20 :10)
                    .offset(x: isShowing ? 300:0, y: isShowing ? 44 : 0)
                    .scaleEffect(isShowing ? 0.8 : 1)
                    .navigationBarItems(leading: Button(action: {
                        withAnimation(.spring()) {
                            isShowing.toggle()
                        }
                    }, label: {
                        Image(systemName: "list.bullet")
                            .foregroundColor(.black)
                    }))
                    
                    .navigationBarTitleDisplayMode(.automatic)
            }
            .onAppear {
                isShowing = false
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        
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
