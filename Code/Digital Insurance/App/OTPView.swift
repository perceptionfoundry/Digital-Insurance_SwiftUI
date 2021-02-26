//
//  OTPView.swift
//  Digital Insurance
//
//  Created by Syed ShahRukh Haider on 25/02/2021.
//

import SwiftUI

struct OTPView: View {
    
    
    @Environment(\.presentationMode) var presentationMode
    @State var timerVal = 0.0
    @State var count = 0.0
    @State var isSegue = false
    @State var isResend = false
    @State var first = 0
    @State var second = 0
    @State var third = 0
    @State var fourth = 0
    
    
    @ObservedObject var textBindingManager = TextBindingManager(limit: 1)
    
    var body: some View {
        
       
        
        if isResend == false{
            var _ = Timer.scheduledTimer(withTimeInterval: 0.8, repeats: false) { (tick) in
            
            
            count += 1
            print(count)
                
            if count < 10{
                print(timerVal)
//                timerVal += 0.10
                timerVal = (timerVal + 0.1).rounded(toPlaces: 1)
               
            }else{
                isResend = true
                tick.invalidate()
                
                
                
            }
        }
        }
       
        
        GeometryReader(content: { geometry in
            ZStack{
                
                LinearGradient(gradient: Gradient(colors: [Color("BG_Color")]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                
                VStack {
                    Text("sms ვერიფიკაცია")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding(.bottom, 30)
                        .padding(.top, 100)
                     
                    
                    Text("შეიყვანე SMS კოდი")
                        .font(.subheadline)
                        .foregroundColor(.white)
                    
                    HStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color("Stroke_Color"))
                                .frame(height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .padding(.horizontal, 20)
                            
                            HStack{
                                
                                ForEach(0 ..< 4){_ in
                                    
                                    VStack {
                                        numberView()
                                    }
                                        
                                   
                                }
                                
                                
                            }
                            .padding(.horizontal)
                         
                        }
                       
                        
                    }
                    
                    ZStack(alignment:.leading){
                        
                    Capsule()
                        .stroke(Color("Stroke_Color"))
                        .frame(height: 10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                       
                        
                        Capsule()
                            .fill(LinearGradient(gradient: Gradient(colors: [Color("Button_Color"), Color.yellow]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            .frame(width:geometry.size.width * CGFloat(timerVal),  height: 5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal,5)
                            
                            
                            Spacer()
                        
                        
                        
                        
                }
                    .padding(.horizontal)
                    .padding(.top, 40)
                    
                    
                    if isResend == true{
                       
                      
                        HStack{
                            Image(systemName: "arrow.counterclockwise")
                                .foregroundColor(Color("Button_Color"))
                            
                            Text("კოდის ხელახლა მიღება")
                                .foregroundColor(.white)
                                .fontWeight(.light)
                                .font(.subheadline)
                            
                           
                               
                        } .padding(.top, 30)
                        
                       
                    }
                    
                    
                    
                    NavigationLink(
                        destination: DashboardView(),
                        isActive: $isSegue,
                        label: {
                            Button(action: {
                                isSegue.toggle()
                            }, label: {
                                ButtonWithImageView(Title: "შემდეგი")
                                    .padding(.top, 30)
                            })
                        })
                  
                    
                  
                   Spacer()
                    
                   
                   
                    
                }
            
               
            }
        })
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

struct OTPView_Previews: PreviewProvider {
    static var previews: some View {
        OTPView()
    }
}

struct numberView: View {
    
    @State var val = ""
    @ObservedObject var textBindingManager = TextBindingManager(limit: 1)
    
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color("Stroke_Color"))
                .frame(width: 50,height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            TextField("-", text: $textBindingManager.text)
                .foregroundColor(.gray)
                .font(.largeTitle)
                    .padding()
                    .multilineTextAlignment(.center)
                    

            
        
        }
    }
}

class TextBindingManager: ObservableObject {
    @Published var text = "" {
        didSet {
            if text.count > characterLimit && oldValue.count <= characterLimit {
                text = oldValue
            }
        }
    }
    let characterLimit: Int

    init(limit: Int = 5){
        characterLimit = limit
    }
}


extension Double {
    /// Rounds the double to decimal places value
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
