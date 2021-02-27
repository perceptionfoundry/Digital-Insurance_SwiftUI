//
//  NutrientView.swift
//  fructus
//
//  Created by Syed ShahRukh Haider on 25/12/2020.
//

import SwiftUI

struct SelectionView: View {
    
    //PROPERTIES
    
    var Options : Options
   
    var optionList = ["Energy", "Sugar", "Fat", "Protein", "Vitamin", "Mineral"]
    @State var currentValue = ""
    @State var index = 0
    // BODY
    var body: some View {
       
       
        GroupBox(){
            DisclosureGroup(optionList[index]) {
              
                ForEach(0..<optionList.count, id: \.self){ item in
                    Divider()
                    VStack{
             
                        Button(action: {
                            index = item
                        }, label: {
                            Text(optionList[item])
                                .foregroundColor(.white)
                        })
                        
                           
                            
                        
                    }//: HStack End
                }//: Loop
            }//: Disclosure End
            
        }//: GroupBox End
        .padding()
        .groupBoxStyle(TransparentGroupBox())
        
    }
}

struct TransparentGroupBox: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.content
//            .frame(maxWidth: .infinity)
            .padding()
            .background(RoundedRectangle(cornerRadius: 50).fill(Color("BG_Color")))
            .overlay(configuration.label.padding(.leading, 100), alignment: .topLeading)
    }
}

//PREVIEW
struct SelectionView_Previews: PreviewProvider {
    static var previews: some View {
        SelectionView(Options: OptionData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 300))
            .padding()
    }
}
