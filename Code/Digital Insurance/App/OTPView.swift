//
//  OTPView.swift
//  Digital Insurance
//
//  Created by Syed ShahRukh Haider on 25/02/2021.
//

import SwiftUI

struct OTPView: View {
    var body: some View {
        
        ZStack{
            
            LinearGradient(gradient: Gradient(colors: [Color("BG_Color")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            
            VStack {
                Text("sms ვერიფიკაცია")
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding(.bottom, 60)
                    .padding(.top, 100)
                 
                
                Text("შეიყვანე SMS კოდი")
                    .font(.subheadline)
                    .foregroundColor(.white)
                
                HStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color("Stroke_Color"))
                            .frame(height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal, 20)
                        
                        HStack{
                            
                            ForEach(0 ..< 4){_ in
                                
                                numberView()
                               
                            }
                            
                            
                        }
                            
                        .padding(.horizontal)
                    }
                }
                
                ZStack(alignment:.leading){
                    
                Capsule()
                    .stroke(Color("Stroke_Color"))
                    .frame(height: 10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                   
                    
                    Capsule()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color("Button_Color"), Color.yellow]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .frame(width:100,  height: 5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(.horizontal,5)
                        
                        
                        
                    
                    
            }
                .padding(.horizontal)
                .padding(.top, 60)
                Spacer()
                
               
                ButtonWithImageView(Title: "შემდეგი")
                
            }
        
           
        }
    }
}

struct OTPView_Previews: PreviewProvider {
    static var previews: some View {
        OTPView()
    }
}

struct numberView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(Color("Stroke_Color"))
                .frame(width: 70,height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Text("-")
                .font(.largeTitle)
                .foregroundColor(.white)
            
            Spacer()
        }
    }
}
