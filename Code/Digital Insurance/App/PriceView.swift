//
//  PriceView.swift
//  Digital Insurance
//
//  Created by Syed ShahRukh Haider on 26/02/2021.
//

import SwiftUI

struct PriceView: View {
    
    var optionList : Options
    @State var isSegue = false
    @Environment(\.presentationMode) var presentationMode
    var nutrients = ["სადაზღვევო პროდუქტზე ინფორმაცია", "როგორ მუშაობს", "ბენეფიტები", "გამონაკლისები"]
    
    var body: some View {
        
        
        
        ZStack{
            
            
            LinearGradient(gradient: Gradient(colors: [Color("BG_Color")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
        VStack{
            
            Text("გაიგე ფასი")
                .foregroundColor(.white)
                .font(.title)
//                .padding(.top, 20)
            
            ZStack {
    
                SelectionView(Options: optionList)
                    .padding(.horizontal, 50)
                   
            }
            .background(
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                
                .foregroundColor(Color("Stroke_Color"))
                .padding(.horizontal, 10)
                .padding(.vertical,7)
            )
            .padding()  //****** Rectanngle
            
            Text("საორიენტაციოდ, შენი ყოველთვიური გადასახადი არის")
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
            
            VStack {
                Text("20₾")
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(#colorLiteral(red: 0.2428063154, green: 0.7718241811, blue: 0.7651962638, alpha: 1)))
                    .background(
                        Color(#colorLiteral(red: 0.0862745098, green: 0.1932071149, blue: 0.3046603203, alpha: 1))

                            .frame(width: 300
                                   , height: 60, alignment:.center )
                            .clipShape(RoundedRectangle(cornerRadius: 30))
                            .shadow(color: Color("Button_Color"), radius: 5, x: 0, y: 0)
                            
                )
            }.padding(.top, 50)
            
            VStack {
                Text("ფრანშიზა: 250 GEL")
                    
                    .font(.subheadline)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .background(
                        Color(#colorLiteral(red: 0.3601864874, green: 0.4746327996, blue: 0.6954559684, alpha: 1))

                            .frame(width: 180
                                   , height: 30, alignment:.center )
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            
                            
                )
            }.padding(.top, 35)
            
            
            Text("საორიენტაციოდ, შენი ყოველთვიური გადასახადი არის")
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.top, 40)
            
            
            NavigationLink(
                destination: CircularView(),
                isActive: $isSegue,
                label: {
                    Button(action: {
                        isSegue.toggle()
                    }, label: {
                        ZStack {
                            
                            Capsule()
                                .frame(height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color("Button_Color"))
                                .padding(.horizontal, 60)
                            
                            
                            HStack {
                                
                               Spacer()
                                Text("გაიაქტიურე დაზღვევა")
                                    .foregroundColor(Color.white)
                                    .font(.custom("", size: 12))
                               Spacer()
                                Image(systemName:"chevron.right")
                                    .padding(.trailing, 1)
                                    .foregroundColor(.white)
                                
                            } //************  HSTACK End
                            .padding(.leading)// HStack End
                            .frame(width: 200, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .shadow(radius: 25 )
                         
                        }//************ VStack End
                        
                        .padding(.top, 40)
                    })
                })

            
            Spacer()
                
        }
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
}

struct PriceView_Previews: PreviewProvider {
    static var previews: some View {
        PriceView(optionList: OptionData.first!)
            .previewDevice("iPhone 8")
    }
}
