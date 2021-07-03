//
//  SideMenuView.swift
//  Yoam
//
//  Created by user198524 on 7/2/21.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                // Header
                SideMenuHeaderView()
                    .frame(height:240)
                    .foregroundColor(.white)
                
                ForEach(0..<5) { _ in
                        SideMenuOptionView()
                }
                
                Spacer()
                
                // Cell Items
               
                
            }
        } .navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
