//
//  ContentView.swift
//  Digital Insurance
//
//  Created by Syed ShahRukh Haider on 25/02/2021.
//

import SwiftUI

struct SignInView: View {
    
    @State var mobileNumber = ""
    @State var isSegue = false
    
    var body: some View {
        
        NavigationView{
        
        ZStack{
            
            LinearGradient(gradient: Gradient(colors: [Color("BG_Color")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
    
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10){

                Text("შემოგორდი BackApp-ში")
                    .foregroundColor(.white)
                    .font(.title2)
                    .padding(.bottom, 100)
                
                HStack {
                    Text("ტელეფონი")
                        .foregroundColor(.white)
                        .font(.footnote)
                    Spacer()

                }
                
                
                
                VStack{
                    ZStack {
                        Capsule()
                            .stroke(Color("Stroke_Color"), lineWidth: 1.5)
                            .frame( height: 45
                                , alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)


                        Capsule()
                            .foregroundColor(Color("Stroke_Color"))
                            .frame( height: 35
                                    , alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .padding(.leading, 4)
                            .padding(.trailing, 4)

                        HStack{
                            Image(systemName: "phone.fill")
                                .resizable()
                                .frame(width: 15, height: 15, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)


                            TextField("5XXXX", text: $mobileNumber)
                                .foregroundColor(.gray)
                                .font(.subheadline)
                               

                        }.padding()

                    }
                    
                   
                    
                }
               
                VStack {
                    
                    Text("ღილაკ 'შემდეგი'-ზე დაჭერით ვაცხადებ თანხმობას, რომ ტელეფონის ნომერი გამოყენებული იყოს საკომუნიკაციო მიზნებისთვის")
                            .foregroundColor(.white)
                            .font(.caption)
                            .fontWeight(.regular)
                        .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.leading)
                        .padding(.top, 30)
                        .padding(.horizontal,20)
                    
                    
                }
                
               Spacer()
                
                NavigationLink(
                    destination: OTPView(),
                    isActive: $isSegue,
                    label: {
                        VStack{ Button(action: {
                            isSegue.toggle()
                             
                         }, label: {
                             
                             ButtonWithImageView(Title: "შემდეგი")
                                 
                            
                         })}
                    })
              
               
                
              
            }// VStack End
            .padding(.vertical,100)
            .padding(.horizontal, 20)

            
        } //: ZStack
         
       
        }
        
        
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
            .previewDevice("iPhone 11")
        
        SignInView()
            .previewDevice("iPhone SE")
    }
}
