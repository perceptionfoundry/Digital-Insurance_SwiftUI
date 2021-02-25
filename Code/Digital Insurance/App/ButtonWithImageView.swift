//
//  ButtonWithImageView.swift
//  Pakvel
//
//  Created by Syed ShahRukh Haider on 22/02/2021.
//

import SwiftUI

struct ButtonWithImageView: View {
    
    //MARK: Properties

    var Title  : String
  
    
    

    var body: some View {
        

        ZStack {
            
            Capsule()
                .frame(width: 200, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color("Button_Color"))
            
            
            HStack {
                
               Spacer()
                Text(Title)
                    .foregroundColor(Color.white)
                    .font(.subheadline)
               Spacer()
                Image(systemName:"chevron.right")
                    .padding(.trailing, 20)
                    .foregroundColor(.white)
                
            } //************  HSTACK End
            .padding(.leading)// HStack End
            .frame(width: 200, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/ )
            
        }//************ VStack End
        .padding()
        
        
    }
}

struct ButtonWithImageView_Previews: PreviewProvider {
    
    static var title = "Button"
   
   
    
    static var previews: some View {
        
        ButtonWithImageView(Title: title)
            
            .previewLayout(.sizeThatFits)
    }
}
