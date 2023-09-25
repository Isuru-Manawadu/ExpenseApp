//
//  Home.swift
//  Expense
//
//  Created by Isuru Manawadu on 23/09/2023.
//

import SwiftUI

struct Home: View {
    @StateObject var expenseViewModel : ExpensiveViewModel = .init()
    var body: some View {
        ScrollView(.vertical, showsIndicators:  false){
            VStack(spacing: 12){
                HStack(spacing: 15){
                    VStack(alignment: .leading, spacing: 4){
                        Text("Welcome")
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundColor(.gray)
                        
                        Text("iJustine")
                            .font(.title2.bold())
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Button {
                        
                    } label : {
                        Image(systemName: "hexagon.fill")
                            .foregroundColor(.gray)
                            .overlay(content: {
                                Circle()
                                    .stroke(.white, lineWidth: 2)
                                    .padding(7)
                                
                            })
                            .frame(width: 40, height: 40)
                            .background(Color.white,in: RoundedRectangle(cornerRadius: 10, style: .continuous))
                            .shadow(color: .black.opacity(0.1), radius: 5, x: 5, y: 5)
                    }
                }
                ExpenseCardView()
            }
            .padding()
        }
        .background{
            Color("BG")
                .ignoresSafeArea()
        }
    }
        @ViewBuilder
        func ExpenseCardView()->some View{
            GeometryReader{
                proxy in
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .fill(.linearGradient(colors: [
                    Color ("Gradient 1"),
                    Color ("Gradient 2"),
                    Color ("Gradient 3"),
                    ], startPoint: .topLeading, endPoint: .bottomTrailing))
                
                
            }
            .frame(height:  220)
            .padding(.top)
        }
    }

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
