//
//  ExpensesView.swift
//  Expense
//
//  Created by Isuru Manawadu on 26/09/2023.
//

import SwiftUI

struct ExpensesView : View {
    
    @StateObject var ExpenseBV : ExpensesModel = ExpensesModel()
    
    //    @State private var selectedCategory = 0
    //    @State private var selectedCategory: String = ""
    //    let categories = ["Health, transport, Foods"]
    
    
    var body: some View {
        ZStack{
            Color.white.edgesIgnoringSafeArea(.all)
            Color.white.opacity(0.04).ignoresSafeArea(edges : .top)
            
            VStack{
                LinearGradient(colors: [Color(""), Color("")],
                               startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea(edges : .top)
                    .frame(height: 200)
                    .overlay {
                        VStack {
                            Text("Your Expenses").font(.system(size: 30))
                                .bold()
                                .foregroundColor(.black)
                            
                        }
                    }
                
                
                VStack(spacing : 20){
                    
                    
                    VStack{
                        RoundedRectangle(cornerRadius: 70)
                            .foregroundColor(.white)
                            .frame(height: 50)
                            .overlay {
                                TextField("Amount", text: $ExpenseBV.amount1)
                                    .padding(.leading, 10)
                            }
                    }
                    .padding(.horizontal , 20)
                    
                    VStack{
                        RoundedRectangle(cornerRadius: 70)
                            .foregroundColor(.white)
                            .frame(height: 50)
                            .overlay {
                                SecureField("Description", text: $ExpenseBV.description1)
                                    .padding(.leading, 10)
                            }
                    }
                    .padding(.horizontal , 20)
                    
                    
                    
                    VStack{
                        RoundedRectangle(cornerRadius: 70)
                            .foregroundColor(.white)
                            .frame(height: 50)
                            .overlay {
                                SecureField("Category", text: $ExpenseBV.category1)
                                    .padding(.leading, 10)
                            }
                    }
                    .padding(.horizontal , 20)
                    
                    
                    VStack{
                        RoundedRectangle(cornerRadius: 70)
                            .foregroundColor(.white)
                            .frame(height: 50)
                            .overlay {
                                SecureField("Date", text: $ExpenseBV.date1)
                                    .padding(.leading, 10)
                            }
                    }
                    .padding(.horizontal , 20)
                    
                    Button {
                        
                    } label: {
                        
                        ZStack {
                            LinearGradient(colors: [Color("Blue"), Color("Blue")], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea(edges : .top).clipShape(RoundedRectangle(cornerRadius: 70))
                                .frame(height: 50)
                            Text("Add Your Expenses")
                                .foregroundColor(.white)
                        }.padding(.horizontal , 20)
                        
                    }
                    
                    //                    Button {
                    //
                    //                    } label: {
                    //
                    //                        ZStack {
                    //                            LinearGradient(colors: [Color("Gradient 2"), Color("Gradient 2")], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea(edges : .top).clipShape(RoundedRectangle(cornerRadius: 70))
                    //                                .frame(height: 50)
                    //                            Text("Clear Fields")
                    //                                .foregroundColor(.white)
                    //                        }.padding(.horizontal , 20)
                    //
                    //                    }
                    //
                    //                }.padding()
                    //
                    .offset(y: 10)
                    
                    
                    Spacer()
                }
                
                
                
            }
        }
    }
}
struct ExpensesView_Previews: PreviewProvider {
    static var previews: some View {
        ExpensesView()
    }
}
