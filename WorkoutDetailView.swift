//
//  WorkoutDetailView.swift
//  Yoam
//
//  Created by Corey Sutton on 6/20/21.
//

import SwiftUI

struct WorkoutDetailView: View {
    
    var workout: Workout
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(workout.day)
                .padding(.leading, 30)
                .font(.largeTitle)
            Text(workout.descript)
                .padding(.leading, 30)
                .font(.title)
            
            List(workout.routine, id: \.self){ exercise in
                Text(exercise)
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }
        
    }
}



struct WorkoutDetailView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutDetailView(workout: Workout(day: "Monday", descript: "Chest Day", image: "chestday", routine: ["Warm Up", "Sit Ups", "Cool Down"]))
    }
}
