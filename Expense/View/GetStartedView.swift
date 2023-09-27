//
//  GetStartedView.swift
//  Expense
//
//  Created by Isuru Manawadu on 25/09/2023.
//

import SwiftUI

struct GetStartedView: View {
    @State private var isNavigatingToLogin = false

    var body: some View {
        NavigationView {
            ZStack {
                Color.white.edgesIgnoringSafeArea(.all)
                Color.white.opacity(0.04).ignoresSafeArea(edges: .top)

                VStack {
                    Image("c")
                        .resizable()
                        .frame(width: 100.0, height: 100)
                        .scaledToFit()

                    Text("Gasto")
                        .font(.system(size: 24))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .lineLimit(1)
                        .bold()
                        .foregroundColor(.black)
                        .frame(width: 250, height: 50)
                        .offset(y: 20)

                    NavigationLink(destination: LoginView(), isActive: $isNavigatingToLogin) {
                        Button {
                            // Handle the Get Started button action here
                            // You can add any necessary logic before navigating to the login view
                            isNavigatingToLogin = true
                        } label: {
                            ZStack {
                                LinearGradient(colors: [Color("Blue"), Color("Blue")], startPoint: .topLeading, endPoint: .bottomTrailing)
                                    .ignoresSafeArea(edges: .top)
                                    .clipShape(RoundedRectangle(cornerRadius: 70))
                                    .frame(height: 50)
                                Text("Get Started")
                                    .foregroundColor(.white)
                            }.padding(.horizontal, 20)
                        }.offset(y: 30)
                    }

                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct GetStartedView_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedView()
    }
}
