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
                .frame(width: 160, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color (#colorLiteral(red: 0, green: 0.7586771846, blue: 0.7385103106, alpha: 1)))
            
            
            HStack {
                
               Spacer()
                Text(Title)
                    .foregroundColor(Color.white)
                    .font(.custom("", size: 10))
               Spacer()
                Image(systemName:"chevron.right")
                    .resizable()
                    .frame(width: 5, height: 10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(.trailing, 30)
                    .foregroundColor(.white)
                
            } //************  HSTACK End
            .padding(.leading)// HStack End
            .frame(width: 200, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
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
