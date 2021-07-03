//
//  SideMenuHeaderView.swift
//  Yoam
//
//  Created by user198524 on 7/2/21.
//

import SwiftUI

struct SideMenuHeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image("arms")
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
                .padding(.bottom, 16)
            
            Text("Corey Sutton")
                .font(.system(size: 24, weight: .semibold))
            
            Text("@thecoreysutton")
                .font(.system(size: 14))
                .padding(.bottom, 24)
            
            HStack(spacing: 12) {
                HStack(spacing: 4) {
                    Text("345") .bold()
                    Text("Following")
                }
                
                HStack(spacing:4) {
                    Text("6,666") .bold()
                    Text("Followers")
                }
                Spacer()
                
            }
            
            Spacer()
        }.padding()
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView()
    }
}
