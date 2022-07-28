//
//  Signup.swift
//  Clear Business
//
//  Created by ECC Student on 7/28/22.
//

import SwiftUI

struct Signup: View {
    var body: some View {
        ZStack{
            Color.init(red: 0.791, green: 0.909, blue: 1.002)
                .ignoresSafeArea()
            
            VStack(spacing:20){
                Text("Create new \n    Account")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.138, green: 0.237, blue: 1.0))
                Button(action: {}, label: {
                    Text("Already registered? Log in here.")
                        .foregroundColor(Color(red: 0.071, green: 0.134, blue: 0.617))
                })
                
            ZStack{
                Rectangle()
                    .cornerRadius(30)
                    .frame(width: 365, height: 600)
                    .foregroundColor(.white)
                    VStack{
                        Group{
                        Text("Name")
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0.018, green: 0.041, blue: 0.189))
                        Rectangle()
                            .frame(width:300, height:50)
                            .cornerRadius(20)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.597, green: 0.616, blue: 0.685)/*@END_MENU_TOKEN@*/)
                        }
                        Group{
                        Text("Email")
                            .foregroundColor(Color(red: 0.018, green: 0.041, blue: 0.189))
                            .fontWeight(.bold)
                        Rectangle()
                            .frame(width:300, height:50)
                            .cornerRadius(20)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.597, green: 0.616, blue: 0.685)/*@END_MENU_TOKEN@*/)
                        }
                        Group{
                        Text("Password")
                            .foregroundColor(Color(red: 0.018, green: 0.041, blue: 0.189))
                            .fontWeight(.bold)
                        Rectangle()
                            .frame(width:300, height:50)
                            .cornerRadius(20)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.597, green: 0.616, blue: 0.685)/*@END_MENU_TOKEN@*/)
                        }
                        Group{
                        Text("Date of Birth")
                            .foregroundColor(Color(red: 0.018, green: 0.041, blue: 0.189))
                            .fontWeight(.bold)
                        Rectangle()
                            .frame(width:300, height:50)
                            .cornerRadius(20)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.597, green: 0.616, blue: 0.685)/*@END_MENU_TOKEN@*/)
                        }
                        Group{
                        Text("Business/Volunteer?")
                            .foregroundColor(Color(red: 0.018, green: 0.041, blue: 0.189))
                            .fontWeight(.bold)
                        Rectangle()
                            .frame(width:300, height:50)
                            .cornerRadius(20)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.597, green: 0.616, blue: 0.685)/*@END_MENU_TOKEN@*/)
                        }
                        Button(action: {}, label: {
                            Text("SIGN UP")
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 0.018, green: 0.041, blue: 0.189))
                                .padding(.horizontal, 115)
                                .padding(.vertical)
                                .background(Color(red: 0.359, green: 0.715, blue: 0.975))
                                .cornerRadius(10)
                        })
                    }
                }
            }
        }
    }
}

struct Signup_Previews: PreviewProvider {
    static var previews: some View {
        Signup()
    }
}
