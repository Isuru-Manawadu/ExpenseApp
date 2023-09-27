//
//  NewHome.swift
//  Expense
//
//  Created by Isuru Manawadu on 27/09/2023.
//
// New Home = Dashboard

import SwiftUI

struct NewHome: View {
    var body: some View {
        
        NavigationStack {
            ZStack {
                TabView {
//                    Text("Home")
//                        .tabItem {
//                            Image(systemName: "house")
//                        }
                  
                    StatisticScreen()
                        .tabItem {
                            Image(systemName: "house")
                        }
//                    Text("Settings")
//                        .tabItem {
//                            Image(systemName: "gearshape")
//                        }
                }
                .padding(.horizontal)
                .accentColor(.black)
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Statistics")
                        .font(.title2)
                        .fontWeight(.bold)
                }
                                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "ellipsis")
                        .font(.system(size: 20))
                        .rotationEffect(.degrees(-90))
                }
            }
        }
        
    }
}

struct NewHome_Previews: PreviewProvider {
    static var previews: some View {
        NewHome()
    }
}
