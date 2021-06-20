//
//  ContentView.swift
//  Shared
//
//  Created by Corey Sutton on 6/19/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //image objects are stacked above each other
        NavigationView {
            VStack {
                //main card view
                ZStack {
                    Image("IMG_0417")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        
                    
                    
                    //Vertical Stack - where objects are stacked vertically
                    VStack {
                        
                        Spacer()
                        
                        Text("Full Body Workout")
                            .font(.largeTitle)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                        Text("For Beginners")
                            .fontWeight(.regular)
                            .foregroundColor(.white)
                        
                    }
                    .padding()
                    .frame(width: 380)
                    .background(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 0.6870748299)))
                }
                .frame(width: 380, height: 300)
                .cornerRadius(20)
                .clipped()
                .shadow(radius: 8)
                .padding(.top, 20)
                
                
                Text("Weekly Plan")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .padding()
                
                //hstack where inner elements are arragned/stacked horizontally
                HStack {
                    
                    //day card
                    ZStack {
                        
                        Image("IMG_0270")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 220)
                        
                        VStack {
                            
                            Spacer()
                            
                            Text("Monday")
                                .font(.title)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                            Text("Chest Day")
                                .fontWeight(.regular)
                                .foregroundColor(.white)
                            
                        }
                        .padding()
                        .frame(width: 150)
                        .background(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 0.6870748299)))
                    }
                    
                    
                    
                    .frame(width: 150, height: 220)
                    .clipped()
                    .cornerRadius(20)
                    .shadow(radius: 8)
                    
                    ZStack {
                        
                        Image("IMG_0270")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 220)
                        
                        VStack {
                            
                            Spacer()
                            
                            Text("Monday")
                                .font(.title)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                            Text("Chest Day")
                                .fontWeight(.regular)
                                .foregroundColor(.white)
                            
                        }
                        .padding()
                        .frame(width: 150)
                        .background(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 0.6870748299)))
                    }
                    
                    
                    
                    .frame(width: 150, height: 220)
                    .clipped()
                    .cornerRadius(20)
                    .shadow(radius: 8)
                }
                
                
                
                Spacer()
            }
            .navigationBarTitle("Home Workouts")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        
        }
    }
}
