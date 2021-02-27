//
//  CircularView.swift
//  Digital Insurance
//
//  Created by Syed ShahRukh Haider on 27/02/2021.
//

import SwiftUI

struct CircularView: View {
    var body: some View {
       
        ZStack{
            
            
            LinearGradient(gradient: Gradient(colors: [Color("BG_Color")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Text("Circular")
            
        }
    }
}

struct CircularView_Previews: PreviewProvider {
    static var previews: some View {
        CircularView()
    }
}
