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
                        
                        Text("Click your day below")
                            .font(.largeTitle)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .shadow(radius: 20)
                        
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
                                            .scaledToFill()
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
                    .navigationBarTitle("Weekly Workouts")
                    .navigationBarTitleDisplayMode(.inline)
                    
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
    Workout(day: "Monday", descript: "Chest day", image: "chestday", routine: ["3 X 20 - Seated Cable Chest Press", "4 X 10 - Incline Bench Press", "3 X 8 - Incline Dumbbell Press", "3 X 12 - Plate Press", "3 X 12 - Tricep Cable Rope Extensions", "3 X 10  - Cable Flys", "3 X 10 - Bench Dips", "1 X 50 - Push Ups"]),
    Workout(day: "Tuesday", descript: "Back Day", image: "backday", routine: ["4 X 10 - Pull Ups", "4 X 15 - Lat Pull Down", "3 X 8 - Bentover Barbell Row", "4 X 8 - Single Arm Dumbbell Row", "4 X 12 - Close Grip Lat Pull Down", "4 X 12 - Close Grip Seated Cable Row", "3 X 12 - Hyperextensions"]),
    Workout(day: "Wednesday", descript: "Shoulder Day", image: "shoulders", routine: ["5 X 8 - Seated Dumbbell Shoulder Press", "3 X 6 - Barbell Front Raises", "4 X 15 - Cable Lateral Raises SS", "Single Arm Dumbbell Lateral Raises", "3 X 10 - EZ Bar Upright Row", "3 X 10 - Rear Delt Machine Fly"]),
    Workout(day: "Thursday", descript: "Leg Day", image: "legday", routine: ["4 X 16 - Body Weight Walking Lunges", "4 X 12 - Abduction Machine", "4 X 10 - Barbell Back Squat", "4 X 15 - Leg Press", "3 X 12 - Prone Hamstring Curl", "3 X 15 Seated Quad Extension", " 3 X 20 Standing Calf Raises"]),
    Workout(day: "Friday", descript: "Arm Day", image: "arms", routine: ["4 X 10 Standing EZ Bar Curls", "4 X 10 Close Grip Barbell Bench", "4 X 10 - Cable Rope Curls", "Overhead Triceps Cable Extension", "4 X 8 - Machine Curls SS", "4 X 8 Triceps Machine Dips"])
    ]
