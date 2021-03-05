//
//  NutrientView.swift
//  fructus
//
//  Created by Syed ShahRukh Haider on 25/12/2020.
//

import SwiftUI

struct SelectionView: View {
    
    //PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode

   
    var optionList = ["სადაზღვევო პროდუქტზე ინფორმაცია", "როგორ მუშაობს", "ბენეფიტები", "გამონაკლისები"]
    
    @State var currentValue = ""
  
    // BODY
    var body: some View {
       
        ZStack{
            
            
            LinearGradient(gradient: Gradient(colors: [Color("BG_Color")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
       
            
            VStack{
                
                VStack{
                    
                    
                    Text("გაიგე ფასი")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(.bottom,100)
                     
                } //VStack End
                      
                
                            ForEach(optionList, id: \.self) { string in
                                cellView(title: string)
                            }.listRowBackground(Color("BG_Color"))
                           
                        
                        
                
                Spacer()
                
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    
                    ButtonWithImageView(Title: "გაიაქტიურე დაზღვევა")
                })
                
                
            }


        
        } //Main ZStake end
      
    }
    
}

//PREVIEW
struct SelectionView_Previews: PreviewProvider {
    static var previews: some View {
        SelectionView()
    }
    
}

struct cellView: View {
    
    var title : String
    
    var body: some View {
        ZStack {
            
            Capsule()
                .frame( height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color ("Stroke_Color"))
            
            
            HStack() {
                
               
                Text(title)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .font(.custom("", size: 10))
                Spacer()
                
                Image(systemName:"chevron.right")
                    .resizable()
                    .frame(width: 5, height: 10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding()
                    .foregroundColor(.white)
                
            } //************  HSTACK End
            .padding(.leading)// HStack End
            .frame(width: 300, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/ )
            
        }//************ VStack End
        .padding()
    }
}
