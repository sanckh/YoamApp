//
//  LogInPage.swift
//  Yoam
//
//  Created by Corey Sutton on 6/21/21.
//

import SwiftUI

let lightGrey = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)
let storedUsername = "Corey"
let storedPassword = "password"


struct LogInPage: View {
    
    @State var username: String = "" //create state variable to bind to text field
    @State var password: String = "" //create state variable to bind to secure field
    @State var authenticationFailed: Bool = false //in event of incorrect details
    @State var authenticationPassed: Bool = false //want this to be on top of VStack
    
    var body: some View {
        
        
        NavigationView {
            ZStack {
                VStack{
                    HelloText()
                    UserImage()
                    UsernameTextField(username: $username)
                    PasswordSecureField(password: $password)
                    
                    if authenticationFailed {
                        Text(" Username or Password incorrect. Please try again")
                            .offset(y: -10)
                            .foregroundColor(.red)
                    }
                    
                    Button(action: {
                        if self.username == storedUsername && self.password == storedPassword {
                           self.authenticationPassed = true
                           self.authenticationFailed = false
                           
                        }
                        else {
                            self.authenticationFailed = true
                            self.authenticationPassed = false
                        }
                    }) {NavigationLink(destination: ContentView()){
                        LoginButton()}}
                        
                .padding() //add padding to entire VStack
                if authenticationPassed{
                    NavigationLink(destination: ContentView()){
                        LoginButton()
                            
                    }
                   
                    
                    Text("Login Successful!")
                        .font (.headline)
                        .frame(width: 250, height: 100)
                        .background(Color.green)
                        .cornerRadius(20.0)
                        .animation(Animation.default)
                }
            }
        }
    }
}

    //playing around with hiding the "back" button
//    fileprivate func setupNavigation()  {
//        navigationBar.title = "Navigation"
//        navigationController?.hideNavigationItemBackground()
//    }
//
//    func hideNavigationItemBackground() {
//        self.navigationBar.setBackgroundImage(UIImage(), for  : UIBarMetrics.default)
//        self.navigationBar.shadowImage = UIImage()
//        self.navigationBar.isTranslucent = true
//        self.view.backgroundColor = UIColor.clear
//    }
    
  
    

struct LogInPage_Previews: PreviewProvider {
    static var previews: some View {
        LogInPage()
    }
}

struct HelloText: View {
    var body: some View {
        Text("YOAM")
            .font(.largeTitle)
            .fontWeight(.medium)
            .padding(.bottom, 20)
    }
}

struct UserImage: View {
    var body: some View {
        Image("dumbbell") //replace image with Yoam image
            .resizable()
            //.aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom, 75)
            .shadow(radius: 8)
    }
}

struct LoginButton: View {
    var body: some View {
        Text("Login")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.black)
            .cornerRadius(35.0)
    }
}

struct UsernameTextField: View {
    
    @Binding var username: String
    
    var body: some View {
        TextField("Username", text: $username)
            .padding()
            .background(lightGrey)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

struct PasswordSecureField: View {
    
    @Binding var password: String
    
    
    var body: some View {
        SecureField("Password", text: $password)
            .padding()
            .background(lightGrey)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}
}
