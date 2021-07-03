//
//  SideMenuOptionView.swift
//  Yoam
//
//  Created by user198524 on 7/2/21.
//

import SwiftUI

struct SideMenuOptionView: View {
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: "person")
                .frame(width: 24, height: 24)
            
            Text("Profile")
                .font(.system(size: 15, weight: .semibold))
            
            Spacer()
        }
        .foregroundColor(.white)
        .padding()
    }
}

struct SideMenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionView()
    }
}
