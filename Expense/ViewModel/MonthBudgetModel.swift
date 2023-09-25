//
//  MonthBudgetModel.swift
//  Expense
//
//  Created by Isuru Manawadu on 26/09/2023.
//

import Foundation
import SwiftUI

class MonthBudgetModel : ObservableObject {
    
    @Published var category : String = ""
    @Published var Duration : String = ""
//    @Published var location : String = ""
    
    @Published var showInMonthBudgetView : Bool = false
   
    
}
