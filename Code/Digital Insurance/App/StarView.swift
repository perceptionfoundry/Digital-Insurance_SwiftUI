//
//  StarView.swift
//  Digital Insurance
//
//  Created by Syed ShahRukh Haider on 02/03/2021.
//

import SwiftUI

struct StarView: View {
    
    
    @Environment(\.presentationMode) var presentationMode
    @State var isReload = false
    @State var isSegue = false
    
    var body: some View {
        
        
        ZStack{
            
            
            LinearGradient(gradient: Gradient(colors: [Color("BG_Color")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
            VStack {
                Text("გილოცავ!")
                    .font(.title)
                    .foregroundColor(.white)
                
                Image("Star")
                    .resizable()
                    .frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Text("9/10 ქულა")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding(.bottom, 10)
                
                
          
                 
                    
                  
                        Text("დეტალურად")
                            .font(.subheadline)
                            .foregroundColor(.white)
                            .background(
                                Color(#colorLiteral(red: 0.3601864874, green: 0.4746327996, blue: 0.6954559684, alpha: 1))
                                    .frame(width: 250
                                           , height: 30, alignment:.center )
                                    .clipShape(RoundedRectangle(cornerRadius: 15))
                        )
                
                Spacer()
                
                
                NavigationLink(
                    destination: DetailView(),
                    isActive: $isSegue,
                    label: {
                        Button(action: {
                            isSegue.toggle()
                        }, label: {
                            ButtonWithImageView(Title: "გამოთვალე ფასი")
                        })
                    })
                
              
                   
                
                
                NavigationLink(
                    destination: DashboardView(),
                    isActive: $isReload,
                    label: {
                        Button(action: {
                            isReload.toggle()
                        }, label: {
                            HStack{
                                Text("გაიაქტიურე დაზღვევა ტესტდრაივის გარეშე")
                                    .font(.custom("", size: 10))
                                    .foregroundColor(Color(#colorLiteral(red: 0.437243104, green: 0.5749703646, blue: 0.6681075096, alpha: 1)))
                                Image(systemName:"arrow.counterclockwise")
                                    .padding(.trailing, 20)
                                    .foregroundColor(Color(#colorLiteral(red: 0.437243104, green: 0.5749703646, blue: 0.6681075096, alpha: 1)))
                                    .padding(.leading,1)
                            }
                            .padding(.top, 2)
                        })
                    })
             
              
                      
             
              
                
                Spacer()
            }
    
            
            
            
            
        }// ZStack End
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
                                Button(action: {
                                    presentationMode.wrappedValue.dismiss()
                                }, label: {
                                    
                                    Image(systemName: "chevron.left")
                                        .foregroundColor(.white)
                                })
        
        )
    }
}

struct StarView_Previews: PreviewProvider {
    static var previews: some View {
        StarView()
    }
}
