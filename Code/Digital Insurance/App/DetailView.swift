//
//  DetailView.swift
//  Digital Insurance
//
//  Created by Syed ShahRukh Haider on 02/03/2021.
//

import SwiftUI

struct DetailView: View {
    
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        
        ZStack{
            
            
            LinearGradient(gradient: Gradient(colors: [Color("BG_Color")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            
            GeometryReader(content: { geometry in
                VStack {
                    ZStack(alignment: .top) {
                        
                        VStack(alignment:.center){
                        GeometryReader(content: { geometry_insider in
                            RoundedRectangle(cornerRadius: 25.0)
                                .foregroundColor(Color("Stroke_Color"))
                                .frame( height: geometry.size.height * 0.75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .padding()
                            
                            Button(action: {
                                presentationMode.wrappedValue.dismiss()
                            }, label: {
                                
                                Image("Cross")
                                    .padding(.leading, geometry_insider.size.width * 0.8)
                                    .padding()
                            })
                            
                           
                            VStack(alignment:.leading){
                                
                                ExtractedView(heading: "აქსელერაცია", title1: "20 უხეში მუხრუჭი", icon1: "speedometer_red", title2: "12 რბილი მუხრუჭი", icon2: "speedometer")
                                
                                ExtractedView(heading: "მურხურჭი          .", title1: "30 მკვეთრი აჩქარება", icon1: "brake-disc_red", title2: "30 ფრთხილი აჩქარება", icon2: "brake-disc")
                            
                                ExtractedView(heading: "სიჩქარის გადაჭარბება", title1: "0 სიჩქარის გადაჭარბება", icon1: "rocket", title2: "2 წთ. გადაჭარბებული სიჩქარე", icon2: "rocket_red")
                                
                                Text("რუკა")
                                    .foregroundColor(.white)
                                    .fontWeight(.semibold)

                                
                            }
                            .padding(.top, 40)
                            .padding(.leading, geometry_insider.size.width * 0.1)
                            
                                InsetMap(heightValue: geometry_insider.size.height * 0.25)
                                .padding(.top, geometry_insider.size.height * 0.7)
                                .padding(.horizontal, 30)
                     
                        })
                        
                        }
                    }
                    
                    Spacer()
                    ButtonWithImageView(Title: "გამოთვალე ფასი")
                    HStack{
                        Text("ტესტის თავიდან გავლა")
                            .font(.custom("", size: 10))
                            .foregroundColor(Color(#colorLiteral(red: 0.437243104, green: 0.5749703646, blue: 0.6681075096, alpha: 1)))
                        Image(systemName:"chevron.right")
                            .padding(.trailing, 20)
                            .foregroundColor(Color(#colorLiteral(red: 0.437243104, green: 0.5749703646, blue: 0.6681075096, alpha: 1)))
                            .padding(.leading,1)
                    }
                    .padding(.top, 2)
                    Spacer()
                }

            })
       
        }// ZStack End
        .navigationBarBackButtonHidden(true)
        

    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}

struct ExtractedView: View {
    
    var heading : String
    var title1 : String
    var icon1 : String
    var title2 : String
    var icon2 : String
    
    var body: some View {
        VStack(alignment:.leading){
            
            Text(heading)
                .fontWeight(.semibold)
                .foregroundColor(.white)
//                .padding(.leading,-60)
                .multilineTextAlignment(.leading)
            
            HStack{
                
                
                Image(icon1)
                Text(title1)
                    .font(.custom("", size: 12))
                    .foregroundColor(.white)
                
            }
            HStack{
                Image(icon2)
                Text(title2)
                    .font(.custom("", size: 12))
                    .foregroundColor(.white)
            }
            
        }.padding(.vertical, 5)
    }
}
