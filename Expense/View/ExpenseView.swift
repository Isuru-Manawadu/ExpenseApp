//
//  ExpenseView.swift
//  Expense
//
//  Created by Isuru Manawadu on 25/09/2023.
//

import SwiftUI

struct ExpenseView: View {
    var body: some View {
        ZStack{
            HStack{
                Text("New Expenses")
                    .offset(x: -80)
                    .font(.system(size: 16, weight: .bold))
                Text("Cancel")
                    .offset(x: 80)
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.blue)
            }.offset(y: -330)
            
            
            VStack{
                Text("Friday 26, 2023")
                    .font(.system(size: 17, weight: .bold))
                    .foregroundColor(.black)
                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                    .background(Color.white)
                    .cornerRadius(10)
                    .offset(y: -280)
            }
            
            VStack{
                Rectangle()
                    .background(Color(red: 0.01, green: 0.98, blue: 0.2))
                    .frame(width: 350, height: 100)
                    .foregroundColor(.clear)
                    .cornerRadius(10)
                HStack{
                    
                    Text("LKR")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.white)
                        .offset(x: -90)
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 4, height: 43)
                        .background(.white)
                        .offset(x: -80)
                    
                    Text("250")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.white)
                        .offset(x: 70)
                    
                    Image("xmark.circle.fill")
                        .background(.white)
                    
                }.offset(y: -82)
                
            }.offset(y: -150)
            
            ZStack{
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: 330, height: 2)
                
                Text("For Health")
                    .offset(x: -120, y: -30)
                
            }.offset(y: -40)
            
            VStack{
                Text("Select Your Category")
                    .font(.system(size: 17, weight: .bold))
                    .foregroundColor(.black)
                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                    .cornerRadius(10)
                    .offset(x: -80, y: 30)
                
                Button(action: {
                    print("")
                    
                }){
                    HStack{
                        Image(systemName: "square.and.pencil")
                            .font(.title)
                        Text("Edit")
                            .fontWeight(.semibold)
                            .font(.title)
                    }
                }.buttonStyle(GradientBackgroundStyle())
                
                Button(action: {
                    print("")
                    
                }){
                    HStack{
                        Image(systemName: "square.and.pencil")
                            .font(.title)
                        Text("Edit")
                            .fontWeight(.semibold)
                            .font(.title)
                    }
                }.buttonStyle(GradientBackgroundStyle())
                
                Button(action: {
                    print("")
                    
                }){
                    HStack{
                        Image(systemName: "square.and.pencil")
                            .font(.title)
                        Text("Edit")
                            .fontWeight(.semibold)
                            .font(.title)
                    }
                }
                .buttonStyle(GradientBackgroundStyle())
                
                
            }.offset(y: 00)
                
                
                
                
            }
        }
    }
struct GradientBackgroundStyle : ButtonStyle {
    func makeBody (configuration : Self.Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: 300)
            .padding()
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [Color("Gradient 3"), Color("Gradient 3")]), startPoint: .leading, endPoint: .trailing))
            
    }
}
    
    
    
    
    struct ExpenseView_Previews: PreviewProvider {
        static var previews: some View {
            ExpenseView()
        }
    }
    
