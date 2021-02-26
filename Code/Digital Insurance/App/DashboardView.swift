//
//  DashboardView.swift
//  Digital Insurance
//
//  Created by Syed ShahRukh Haider on 26/02/2021.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        
      
        ZStack{
            
            LinearGradient(gradient: Gradient(colors: [Color("BG_Color")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            
            GeometryReader(content: { geometry in
                VStack{
                    VStack{
                        Text("გაიგე ფასი")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding(.bottom, 20)
                          
                    } //VStack End
                    
                    VStack{
                        
                        ZStack(alignment:.top){
                            RoundedRectangle(cornerRadius: 25)
                                .padding()
                                .foregroundColor(Color("Stroke_Color"))
                                .frame(height:geometry.size.height / 1.5)
                            
                            VStack{
                                
                                
                                VStack {
                                    Text("9/10 ქულა")
                                       
                                        .foregroundColor(Color(#colorLiteral(red: 0.4293341339, green: 0.5671182871, blue: 0.6602508426, alpha: 1)))
                                        .background(
                                            Color("BG_Color")

                                                .frame(width: 169, height: 30, alignment:.center )
                                                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                                .shadow(color: Color("Button_Color"), radius: 5, x: 0, y: 0)
                                                
                                    )
                                }
                                .padding(.top,50)
                                    
                                Text("სედანია თუ ჯიპი?")
                                    .font(.footnote)
                                    .padding(.top, 20)
                                    .foregroundColor(.white)
                                    .padding(.bottom, 20)
                                HStack(spacing: 40){
                                    Image("Car")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 120, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

                                    Image("Jeep")               .resizable()
                                        .scaledToFit()
                                        .frame(width:120, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

                                }
                                
                               
                            }
                           
                        }// ZStack End
                        .padding(.top)
                    } // VStack End
                    
                }
                Spacer()
            
               

            })// Geometry Reader End
           
         
      
            
        } //Main ZStake end
        .navigationBarBackButtonHidden(true)
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
