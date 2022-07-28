//
//  ContentView.swift
//  Clear Business
//
//  Created by ECC Student on 7/25/22.
//

import SwiftUI

struct Login: View {
    var body: some View {
        ZStack{
            Color.init(red: 0.791, green: 0.909, blue: 1.002)
                .ignoresSafeArea()
            
            VStack(spacing:20){
                Text("Login")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("Sign in to continue")
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.359, green: 0.715, blue: 0.975))
                
            ZStack{
                Rectangle()
                    .cornerRadius(30)
                    .frame(width: 365, height: 500)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.018, green: 0.041, blue: 0.189)/*@END_MENU_TOKEN@*/)
                
                    VStack{
                        Text("Username")
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.359, green: 0.715, blue: 0.975)/*@END_MENU_TOKEN@*/)
                            .fontWeight(.bold)
                        Rectangle()
                            .frame(width:300, height:50)
                            .cornerRadius(20)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.311, green: 0.373, blue: 0.501)/*@END_MENU_TOKEN@*/)
                        Text("Password")
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.359, green: 0.715, blue: 0.975)/*@END_MENU_TOKEN@*/)
                            .fontWeight(.bold)
                        Rectangle()
                            .frame(width:300, height:50)
                            .cornerRadius(20)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.311, green: 0.373, blue: 0.501)/*@END_MENU_TOKEN@*/)
                        Button(action: {}, label: {
                            Text("LOG IN")
                                .fontWeight(.bold)
                                .padding(.horizontal, 125.0)
                                .padding(.vertical)
                                .foregroundColor(Color(red: 0.071, green: 0.134, blue: 0.617))
                                .background(.white)
                                .cornerRadius(10)
                        })
                        Button(action: {}, label: {
                            Text("Forgot Password?")
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 0.359, green: 0.715, blue: 0.975))
                        })
                        Button(action: {}, label: {
                            Text("Signup!")
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 0.359, green: 0.715, blue: 0.975))
                        })
                    }
                }
            }
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
