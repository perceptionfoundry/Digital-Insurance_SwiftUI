//
//  DashboardView.swift
//  Digital Insurance
//
//  Created by Syed ShahRukh Haider on 26/02/2021.
//

import SwiftUI

struct DashboardView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State var collected_car = "Car"
    @State var collected_jeep = "Jeep"
    @State var isCar = false
    @State var isJeep = false
    @Binding var isDismiss : Bool
    @State var isSegue2 = false
    @State var selectedDate = Date()
    var body: some View {
        
      
        
        
//        ZStack{
//
//
//            LinearGradient(gradient: Gradient(colors: [Color("BG_Color")]), startPoint: .top, endPoint: .bottom)
//                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            
            
            
            GeometryReader(content: { geometry in
                VStack{
                    
                   
                    
                    VStack{
                        
                        ZStack(alignment:.top){
                            RoundedRectangle(cornerRadius: 25)
                                .padding()
                                .foregroundColor(Color("Stroke_Color"))
                                .frame(height:geometry.size.height * 0.7)
                            
                            VStack{
                                
                                
                               
                                    
                                Text("სედანია თუ ჯიპი?")
                                    .font(.footnote)
                                    .padding(.top, 30)
                                    .foregroundColor(.white)
                                    .padding(.bottom, 20)
                                   
                                HStack(spacing: 90){
                                    
                                    Button(action: {
                                        isCar.toggle()
                                        isJeep = false
                                    }, label: {
                                        
                                        if isCar{
                                            Image("Car_Yellow")
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: geometry.size.width * 0.1, height: geometry.size.height * 0.1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        }else{
                                            Image("Car")
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: geometry.size.width * 0.1, height: geometry.size.height * 0.1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        }
                                      
                                    })
                                    
                                   
                                    Button(action: {
                                        isJeep.toggle()
                                        isCar = false
                                    }, label: {
                                        
                                        if isJeep{
                                            Image("Jeep_Yellow")
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: geometry.size.width * 0.1, height: geometry.size.height * 0.1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        }else{
                                            Image("Jeep")
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: geometry.size.width * 0.1, height: geometry.size.height * 0.1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        }
                                      
                                    })

                                    

                                }
                                
                                VStack {
                                    Text("დაბადების თარიღი")
                                        .font(.footnote)
                                        .padding(.top, 20)
                                        .foregroundColor(.white)
                                        .padding(.bottom, 20)
                                    
                              
                                       
                                    DatePicker("", selection: $selectedDate, displayedComponents: .date)
                                        .labelsHidden()
                                        .accentColor(Color(#colorLiteral(red: 0.4293341339, green: 0.5671182871, blue: 0.6602508426, alpha: 1)))
                                        .background(
                                            Color("BG_Color")
                                                .frame(width: geometry.size.width * 0.8, height: 40 , alignment:.center )
                                                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)))
                                    

                                    
                                    
                                    Text("მანქანის საბაზრო ღირებულება")
                                        .font(.footnote)
                                        .padding(.top, 20)
                                        .foregroundColor(.white)
                                        .padding(.bottom, 20)
                                    
                                    TextField("XXXXXX $", text: .constant(""))
                                        .keyboardType(.numberPad)
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(Color(#colorLiteral(red: 0.4293341339, green: 0.5671182871, blue: 0.6602508426, alpha: 1)))
                                        .background(
                                            Color("BG_Color")
                                                .frame(width: geometry.size.width * 0.8, height: 40 , alignment:.center )
                                                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)))
                                }
                                
                                
                                
                                
                             

                                        Button(action: {
                                            isDismiss = false
                                        }, label: {
                                            ButtonWithImageView(Title: "გამოთვლა")
                                        }).padding()
                               
                                           
                                            
                                
                               
                            }//VStack End
                         
                            
                           
                        }// ZStack End
                        .padding(.top)
                    } // VStack End
                    .padding(.top, 0)
                    
                   
                    
//                    NavigationLink(
//                        destination: PriceView(optionList: OptionData.first!),
//                        isActive: $isSegue2,
//                        label: {
//                            Button(action: {
//                                isSegue2.toggle()
//                            }, label: {
//                                ZStack {
//                                    
//                                    Capsule()
//                                        .frame(width: 250, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                                        .foregroundColor(Color("Stroke_Color"))
//                                    
//                                    
//                                    HStack {
//                                        
//                                       Spacer()
//                                        Text("გაიაქტიურე დაზღვევა")
//                                            .foregroundColor(Color.white)
//                                            .font(.custom("", size: 12))
//                                       Spacer()
//                                        Image(systemName:"chevron.right")
//                                            .padding(.trailing, 20)
//                                            .foregroundColor(.white)
//                                        
//                                    } //************  HSTACK End
//                                    .padding(.leading)// HStack End
//                                    .frame(width: 200, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/ )
//                                 
//                                }//************ VStack End
//                                .padding(.bottom)
//                            })
//                        })
                   
                   
                    
                }
                Spacer()
            
               

            })// Geometry Reader End
           
         
      
            
//        } //Main ZStake end
//        .navigationBarBackButtonHidden(true)
//        .navigationBarItems(leading:
//                                Button(action: {
//                                    presentationMode.wrappedValue.dismiss()
//                                }, label: {
//
//                                    Image(systemName: "chevron.left")
//                                        .foregroundColor(.white)
//                                })
//
//        )

    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView(isDismiss: .constant(false))
            .previewDevice("iPhone 8")
    }
}
