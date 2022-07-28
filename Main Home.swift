//
//  Main Home.swift
//  Clear Business
//
//  Created by ECC Student on 7/28/22.
//

import SwiftUI

struct Main_Home: View {
    var body: some View {
        ZStack {
            Color.init(red: 0.791, green: 0.909, blue: 1.002)
                .ignoresSafeArea()
            Rectangle()
                .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.955, green: 0.965, blue: 0.986)/*@END_MENU_TOKEN@*/)
                .frame(width:1000,height:150)
                .position(x:0, y:0)
                .shadow(color: .gray, radius: 6, x: 1, y: 3)
            HStack{
                Text("CLEAR BUSINESS")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.018, green: 0.041, blue: 0.189))
                    .shadow(color: .gray, radius: 1, x: 1, y: 0)
                Button(action: {}, label: {
                    Image(systemName:"bell")
        
                })
            }
        }
        
    }
}

struct Main_Home_Previews: PreviewProvider {
    static var previews: some View {
        Main_Home()
    }
}
