//
//  MonthAnalysisView.swift
//  Expense
//
//  Created by Isuru Manawadu on 26/09/2023.
//

import SwiftUI

struct MonthAnalysisView: View {
    var body: some View {
        ZStack{
            VStack{
                Text("Month Analysis")
                    .font(.system(size: 20, weight: .bold))
                    .offset(x: -90, y: -300)
                Text("AUGUST")
                    .font(.system(size: 20, weight: .bold))
                    .offset(y: -270)
                    
            }
            
            HStack{
                Image("chevron.down")
                    .frame(width: 300,height: 100)
                    .clipped()
                    .cornerRadius(20)
            }
        }
    }
}

struct MonthAnalysisView_Previews: PreviewProvider {
    static var previews: some View {
        MonthAnalysisView()
    }
}
