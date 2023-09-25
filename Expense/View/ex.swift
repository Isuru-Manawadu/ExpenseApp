//
//  ex.swift
//  Expense
//
//  Created by Isuru Manawadu on 25/09/2023.
//

import SwiftUI

struct ex: View {
    var body: some View {
        ZStack {
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: 200, height: 100)
                        .cornerRadius(8)

                    VStack {
                        Text("Isuru Manawadu")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(Color.black)

                        Text("Total Balance")
                            .font(.system(size: 12))
                            .foregroundColor(Color.gray)

                        Text("Rs. 25,000.00")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(Color.black)

                        HStack {
                            Text("+")
                                .font(.system(size: 16, weight: .bold))
                                .foregroundColor(Color.black)

                            Spacer()

                            Text("Statics")
                                .font(.system(size: 12))
                                .foregroundColor(Color.gray)
                        }

                        HStack {
                            Text("AUG")
                                .font(.system(size: 12))
                                .foregroundColor(Color.black)

                            Spacer()

                            Text("Rs. 15,000")
                                .font(.system(size: 12))
                                .foregroundColor(Color.black)
                        }

                        HStack {
                            Text("Expense")
                                .font(.system(size: 12))
                                .foregroundColor(Color.black)

                            Spacer()

                            Text("Rs. 5,000")
                                .font(.system(size: 12))
                                .foregroundColor(Color.black)
                        }
                    }
                    .padding()
                }
            }
        
}

struct ex_Previews: PreviewProvider {
    static var previews: some View {
        ex()
    }
}
