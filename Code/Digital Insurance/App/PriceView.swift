//
//  PriceView.swift
//  Digital Insurance
//
//  Created by Syed ShahRukh Haider on 26/02/2021.
//

import SwiftUI

struct PriceView: View {
    
    var optionList : Options
    
    var nutrients = ["Energy", "Sugar", "Fat", "Protein", "Vitamin", "Mineral"]
    
    var body: some View {
        
        
        
        ZStack{
            
            
            LinearGradient(gradient: Gradient(colors: [Color("BG_Color")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
        VStack{
            
            Text("გაიგე ფასი")
                .foregroundColor(.white)
                .font(.title)
                .padding(.top, 60)
            
            ZStack {
    
                
                SelectionView(Options: optionList)
                    .padding(.horizontal, 50)
            }
            
            Spacer()
                
        }
        }
    }
}

struct PriceView_Previews: PreviewProvider {
    static var previews: some View {
        PriceView(optionList: OptionData.first!)
    }
}
