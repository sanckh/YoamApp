//
//  SideMenuView.swift
//  Yoam
//
//  Created by Corey Sutton on 7/2/21.
//

import SwiftUI

struct SideMenuView: View {
    
    @Binding var isShowing: Bool

    var body: some View {
        NavigationView {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                
                // Header
                SideMenuHeaderView(isShowing: $isShowing)
                    .frame(height:240)
                    .foregroundColor(.white)
                
                NavigationLink(
                    destination: SideMenu(),
                    label: {
                        Text("Home")
                    })
                    .padding()
                    .foregroundColor(.white)
                    .offset(x: -175)
                    
                   
                
                NavigationLink(
                    destination: LogInPage(),
                    label: {
                        Text("Log Out")
                    })
                    .padding()
                    .foregroundColor(.white)
                    .offset(x: -165)
                
                
                NavigationLink(
                    destination: macrocalculator(),
                    label: {
                        Text("Calorie Calculator")
                    })
                    .padding()
                    .foregroundColor(.white)
                    .offset(x: -130)
                Spacer()
            }
        }
        .navigationBarHidden(true)
        
            
    }
}

    struct SideMenuView_Previews: PreviewProvider {
        static var previews: some View {
            SideMenuView(isShowing: .constant(true))
        }
    }
}
