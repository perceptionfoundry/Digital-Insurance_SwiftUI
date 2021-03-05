import SwiftUI

struct PriceView3: View {
    
//    var optionList : Options
    @State var isSegue = false
    
    @Environment(\.presentationMode) var presentationMode
    var nutrients = ["სადაზღვევო პროდუქტზე ინფორმაცია", "როგორ მუშაობს", "ბენეფიტები", "გამონაკლისები"]
    
    @State var isExpand = false
    @State var animation :Double = 0.0
    
    var body: some View {
        
        
        
        ZStack(alignment:.top){
            
            
        LinearGradient(gradient: Gradient(colors: [Color("BG_Color")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
        
        VStack{
            
            Text("გაიგე ფასი")
                .foregroundColor(.white)
                .font(.title)
//                .padding(.top, 20)
  
                VStack(alignment:.center){
 
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
                    
                }//CENTER CONTENTS
                .padding(.top, 100)
  
            Spacer()
            NavigationLink(
                destination: SelectionView() ,
                isActive: $isSegue,
                label: {
                    Button(action: {
                        isSegue.toggle()
                    }, label: {
                        ZStack {
                            
                            Capsule()
                                .frame(height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(isExpand ? Color("Stroke_Color"):Color("Button_Color"))
                                .padding(.horizontal, 60)
                            
                            
                            HStack {
                                
                               Spacer()
                                Text("გაიაქტიურე დაზღვევა")
                                    .foregroundColor(isExpand ? Color(#colorLiteral(red: 0.437243104, green: 0.5749703646, blue: 0.6681075096, alpha: 1)):Color.white)
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
        .padding()
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
                                Button(action: {
                                    presentationMode.wrappedValue.dismiss()
                                }, label: {
                                    
                                    Image(systemName: "chevron.left")
                                        .foregroundColor(.white)
                                }))
            
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .frame(height: isExpand ? 525 : 60
                   , alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color("Stroke_Color"))
            .padding()
            .padding(.top, 50)
            .animation(.linear)
            
            HStack{
          
                    Text("9/10 ქულა")
                        .foregroundColor(Color(#colorLiteral(red: 0.4293341339, green: 0.5671182871, blue: 0.6602508426, alpha: 1)))
                        .background(
                            Color("BG_Color")

                                .frame(width: 225, height: 30, alignment:.center )
                                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                .shadow(color: Color("Button_Color"), radius: 5, x: 0, y: 0))
                    Spacer()
                        
                            
                if !isExpand{
                   
                    
                    Button(action: {
                        
                        withAnimation(.easeInOut(duration: 0.5
                        )) {

                        isExpand.toggle()
                        }
                    }, label: {
                        Image(systemName: "chevron.right")
                            .resizable()
                            .frame(width: 5, height: 10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .rotationEffect(.init(degrees: 90))
                            .background(
                                Circle()
                                    .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(Color("BG_Color"))
                                    )
        
                    })

                }
                
                 
                  
                
        }
            .padding(.top, 85)
            .padding(.trailing, 40)
            .padding(.leading, 150)
            
            if isExpand{
                
                DashboardView(isDismiss: $isExpand)
                    
                .padding(.top, 100)
            }
            
        }// MAIN ZSTACK END
//        .onAppear(perform: {
//            withAnimation(Animation.easeInOut(duration: 2).repeatForever()){
//
//                animation = 0.1
//            }
//        })
        
    }
}

struct PriceView3_Previews: PreviewProvider {
    static var previews: some View {
        PriceView3()
            .previewDevice("iPhone 8")
        PriceView3()
            .previewDevice("iPhone 11")
    }
}
