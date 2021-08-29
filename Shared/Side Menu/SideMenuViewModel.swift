//
//  SideMenuViewModel.swift
//  Yoam
//
//  Created by user198524 on 7/2/21.
//

import Foundation

enum SideMenuViewModel : Int, CaseIterable {
    
    
    case logout
    
    var title: String {
        
        switch self {
        
        
        case .logout: return "Log Out"
        
        }
    }
    
    var imageName: String {
        
        switch self{
        
        
        case .logout: return "arrow.left.square"
        
        }
        
    }
    
}
