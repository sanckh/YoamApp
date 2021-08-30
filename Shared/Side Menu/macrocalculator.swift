//
//  macrocalculator.swift
//  Yoam
//
//  Created by Corey Sutton on 8/29/21.
//

import SwiftUI

struct macrocalculator: View {
    
    @State var height: Int = 0
    @State var age: Int = 0
    @State var weight: Int = 0
    @State var sex: Sex = .male
    
    var computed: Double { if height == 0 && age == 0 && weight == 0 { return 0.0 }
        return (sex.calculateBMR(height : height, age : age, weight: weight));
        
    }
    
    
    var body: some View {
        NavigationView {
            
            ZStack {
                VStack {
                    HeightTextField(height : Binding<String>(get: { height == 0 ? "" : String(height) }, set: { height = Int($0) ?? 0 }))
                    
                    AgeTextField(age : Binding<String>(get: { age == 0 ? "" : String(age) }, set: { age = Int($0) ?? 0 }))
                    
                    WeightTextField(weight : Binding<String>(get: { age == 0 ? "" : String(weight) }, set: { weight = Int($0) ?? 0 }))
                    
                    Picker(sex.rawValue, selection: $sex)
                    {
                        Text(Sex.male.rawValue).tag(Sex.male)
                        Text(Sex.female.rawValue).tag(Sex.female)
                    }
                    .offset(y: -50)
                    Text("Daily Maintenance Calorie Intake: " + String(computed))
                        .offset(x: 0, y: -60.0/*@END_MENU_TOKEN@*/)
                    Text("Disclaimer: This is a recommendation from a fitness professional, not a prescription. This calculator uses a scientific formula based on exercise three times per week.")
                    
                }
                .padding()
                .offset(y: -40)
                
            }
            
        
            
        }
    }
    
    struct macrocalculator_Previews: PreviewProvider {
        static var previews: some View {
            macrocalculator()
        }
    }
    
    struct HeightTextField: View {
        
        @Binding var height: String
        
        var body: some View {
            TextField("Height in Inches", text: $height)
                .padding()
                .background(lightGrey)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
                
        }
    }
    
    struct AgeTextField: View {
        
        @Binding var age: String
        
        var body: some View {
            TextField("Age", text: $age)
                .padding()
                .background(lightGrey)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
                
        }
    }
    
    struct WeightTextField: View {
        
        @Binding var weight: String
        
        var body: some View {
            TextField("Weight", text: $weight)
                .padding()
                .background(lightGrey)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
                
        }
    }
    
    // For women: BMR = 655 + (4.35 x weight in pounds) + (4.7 x height in inches) - (4.7 x age in years)
    
    // For men: BMR = 66 + (6.23 x weight in pounds) + (12.7 x height in inches) - (6.8 x age in years)
    
    enum Sex : String, CaseIterable{
        case male = "Male"
        case female = "Female"
        
        func calculateBMR(height : Int, age : Int, weight : Int) -> Double
        {
            if self == .female {
                return 655.0 + (4.35 * Double (weight)) + (4.7 * Double (height)) - (4.7 * Double (age) * 1.25)
            }
            return 66.0 + (6.23 * Double (weight)) + (12.7 * Double (height)) - (6.8 * Double (age) * 1.25)
        }
        
    }
    
}
