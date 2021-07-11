//
//  ContentView.swift
//  Shared
//
//  Created by Corey Sutton on 6/19/21.
//

import SwiftUI

struct ContentView: View {
    
    let workoutsData = workouts
    @State private var isShowing = false
    
    var body: some View {
        
        //image objects are stacked above each other
        NavigationView {
            
          
            
            VStack(alignment: .leading) {
                
                //main card view
                ZStack {
                    Image("IMG_0417")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        
                        
                    
                    
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
                    //.background(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 0.6870748299)))
                }
                

                .frame(width: 380, height: 300)
                .cornerRadius(20)
                .clipped()
                .shadow(radius: 8)
                //.padding(.top, 20)
                .padding(25)
                .offset(x: 0, y: -30)
                
                
                Text("Weekly Plan")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .padding()
                
                //hstack where inner elements are arragned/stacked horizontally
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 30){
                        ForEach(workoutsData){ workout in
                            
                            //day card
                            NavigationLink(destination: WorkoutDetailView(workout:workout)) {
                                ZStack {
                                    
                                    Image(workout.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(height: 220)
                                    
                                    VStack {
                                        
                                        Spacer()
                                        
                                        Text(workout.day)
                                            .font(.title)
                                            .fontWeight(.medium)
                                            .foregroundColor(.white)
                                        Text(workout.descript)
                                            .fontWeight(.regular)
                                            .foregroundColor(.white)
                                        
                                    }
                                    .padding()
                                    .frame(width: 150)
                                   // .background(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 0.6870748299)))
                                }
                                
                                
                                
                                .frame(width: 150, height: 220)
                                .clipped()
                                .cornerRadius(20)
                                .shadow(radius: 8)
                            }
                        
                    }
                    
                    Spacer()
                }
                    .padding()
                    .navigationBarTitle("Home Workouts")
                    .navigationBarTitleDisplayMode(.automatic)
                    
                }
                .offset(x: 0, y: -30)
        }
    }
        .navigationBarBackButtonHidden(true)
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        
        }
    }
}
    
    
   
}

struct Workout: Identifiable{
    var id = UUID() //variable id is being set to the returned unique identifier
    
    var day: String //will be used to change the title of each card
    var descript: String //will be used to change the description of each card
    var image: String //change the image of the card
    var routine: [String] //an array for the content inside the card
}



//use let when declaring a variable that will not change
let workouts = [
    Workout(day: "Monday", descript: "Chest day", image: "chestday", routine: ["Warmup", "Bench Press", "Cool Down"]),
    Workout(day: "Tuesday", descript: "Back Day", image: "backday", routine: ["Warmup", "Lat Pull Down", "Cool Down"]),
    Workout(day: "Wednesday", descript: "Shoulder Day", image: "shoulders", routine: ["Warmup", "Shoulder Press", "Cool Down"]),
    Workout(day: "Thursday", descript: "Leg Day", image: "legday", routine: ["Warmup", "Squat", "Cool Down"]),
    Workout(day: "Friday", descript: "Arm Day", image: "arms", routine: ["Warmup", "Curls", "Cool Down"])
    ]
