//
//  CircularView.swift
//  Digital Insurance
//
//  Created by Syed ShahRukh Haider on 27/02/2021.
//

import SwiftUI

struct CircularView: View {
    
    @State var progress : Double = 0
    @State var progress2 : Double = 0
    @State var sum : Double = 0
    @State var isSegue2 = false
    @State var isStarted = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
       
      
        NavigationLink(
            destination: StarView(),
            isActive: $isSegue2,
            label: {})
                
                
                ZStack{
                    
                    
                    LinearGradient(gradient: Gradient(colors: [Color("BG_Color")]), startPoint: .top, endPoint: .bottom)
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    
                    
               
                    
                    VStack{
                        
                        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10){
                            Text("ტესტ დრაივი")
                                .font(.title)
                                .foregroundColor(.white)
                                
                            Text("დაჯექი, დაქოქე, დაძარი და გაიარე 5 კილომეტრი")
                                .font(.subheadline)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                         
                        }//VStack End
                        .padding()
                        
                        ZStack{
                            
                            Circle()
                                .foregroundColor(Color("Stroke_Color"))
                                .frame(width: 250, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .shadow(color: Color("Button_Color"), radius: 9, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                            
                            Circle()
                                .trim(from: 0.0, to: CGFloat(self.progress))
                                .stroke(style: StrokeStyle(lineWidth: 25, lineCap: .round, lineJoin: .round))
                                .foregroundColor(Color("Button_Color"))
                                .frame(width: 225, height: 225, alignment: .top)
                                .rotationEffect(.degrees(-90))
                                .animation(Animation.linear(duration: 2.0))
                            
                            
                            Circle()
                                .trim(from: 0.0, to: CGFloat(self.progress2))
                                .stroke(style: StrokeStyle(lineWidth: 25, lineCap: .round, lineJoin: .round))
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 0.6058419347, blue: 0, alpha: 1)))
                                .frame(width: 225, height: 225, alignment: .top)
                                .rotationEffect(.degrees(-90))
                                .animation(Animation.linear(duration: 2.0))
                                
                            
                            Circle()
                                .foregroundColor(Color("BG_Color"))
                                .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            VStack{
                                HStack {
                                    Text(String(format: "%.2f%", min(self.sum, 2.0)*3000.0))
                                        .font(Font.custom("", size: 30))
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color(#colorLiteral(red: 0.2888081074, green: 0.3621378541, blue: 0.4129983783, alpha: 1)))
                                    
                                    Text("კმ.")
                                        .font(Font.custom("", size: 16))
                                        .fontWeight(.regular)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .padding(.top,10)
                                }
                                Text("გავლილი მანძილი")
                                    .font(Font.custom("", size: 12))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .padding(.top,4)
                                
                            }
                            
                        }//ZStack End
                        .padding(.top, 50)
                        
                        if isStarted == false{
                            
                            VStack {
                                Spacer()
                                Button(action: {
                                    isSegue2.toggle()
                                }, label: {
                                    ZStack {
                                        
                                        Capsule()
                                            .frame(width: 250, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                            .foregroundColor(Color("Stroke_Color"))
                                        
                                        
                                        HStack {
                                            
                                            Image(systemName:"info.circle")
                                                .padding(.trailing, 20)
                                                .foregroundColor(.white)
                                                .padding(.leading,1)
                                            
                                            
                                            Text("თუ მოძრაობას შეწყვეტ, ტესტ დრაივიც დაპაუზდება")
                                                .foregroundColor(Color.white)
                                                .multilineTextAlignment(.center)
                                                .font(.custom("", size: 10))
                                            
                                            
                                        } //************  HSTACK End
                                        // HStack End
                                        .frame(width: 200, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/ )
                                        
                                    }//************ VStack End
                                    .padding(.top)
                                })
                                
                                
                                HStack{
                                    Text("👊")
                                    Text("აბა შენ იცი!")
                                        .font(.caption)
                                        .foregroundColor(Color.white)
                                    
                                }
                                
                             
                                        Button(action:
                                                {
                                                    isStarted.toggle()
                                                    
                                                    
//
                                                    
                                                    
                                                    Timer.scheduledTimer(withTimeInterval: 0.0000001, repeats: true) { (timer) in
                                                        self.progress += 0.0001
                                                        sum = progress
                                                        
                                                        if self.progress >= 1{
                                                            self.progress2 += 0.0001
                                                            
                                                            if self.progress2 >= 1{
                                                  
                                                                timer.invalidate()
                                                                self.isSegue2 = true
                                                                self.segue()

                                                            }
                                                        }
                                                    }
                                                }, label: {
                                                    ButtonWithImageView(Title: "დავიწყოთ")
                                                })
                                  
                               
                                
                                
                                HStack{
                                    Text("გაიაქტიურე დაზღვევა ტესტდრაივის გარეშე")
                                        .font(.custom("", size: 10))
                                        .foregroundColor(Color("Stroke_Color"))
                                    Image(systemName:"chevron.right")
                                        .padding(.trailing, 20)
                                        .foregroundColor(Color("Stroke_Color"))
                                        .padding(.leading,1)
                                }
                                .padding(.top, 2)
                            }
                        }else{
                            VStack{
                                Spacer()
                                ZStack {
                                    RoundedRectangle(cornerRadius: 30)
                                        .foregroundColor(Color("Stroke_Color"))
                                        .frame( height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        .padding()
                                    
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
                                            .padding(.top, 20)
                                        
                                        Text("აპლიკაციის ჩაკეცვისას ტესტ დრაივი დაპაუზდება ფრთხილად შეანელე და ააჩქარე მანქანა სიჩქარეს არ გადააჭარბო")
                                            .font(.subheadline)
                                            .foregroundColor(.white)
                                                .multilineTextAlignment(.center)
                                            .padding(.horizontal)
                                            .padding()
                                        
                                    }
                                }//ZStack
                            }
                        }
                        
                        Spacer()
                    } //VStack End
                    
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
                
                
                
//          image
    }
    
    
    func segue(){
        
        
      
    }
}




struct CircularView_Previews: PreviewProvider {
    static var previews: some View {
        CircularView()
    }
}
