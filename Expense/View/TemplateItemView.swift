//
//  TemplateItemView.swift
//  Expense
//
//  Created by Isuru Manawadu on 27/09/2023.
//

import SwiftUI

struct TempleteItemView: View {
    let templete: Templete
    
    var body: some View {
        VStack {
            
            VStack(alignment: .leading){
                Text("")
                    .font(.subheadline)
                    .foregroundColor(.white) //color change in insurance above
                    .padding(.bottom, 1)
                Text(templete.name)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
//                Text("20 Sep, 2021")
//                    .font(.subheadline)
//                    .foregroundColor(.white) //color change in below the insurance words
            }
            .padding(.bottom, 20)
            
            HStack {
//                Text("Paid")
//                    .font(.callout)
//                    .padding(.trailing, 20)
                Text(templete.amount)
                    .fontWeight(.bold)
            }
            .padding(.vertical, 10)
            .padding(.horizontal, 7)
            .background(.yellow) // color change in Paid tab in template view
            .cornerRadius(10)
            
        }
        .padding()
        .background(Color("purple")) //color change for below tab of new home
        .cornerRadius(15)
    }
}

struct TempleteItemView_Previews: PreviewProvider {
    static var previews: some View {
        TempleteItemView(templete: templetes[0])
    }
}
