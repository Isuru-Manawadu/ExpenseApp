//
//  MonthBudgetModel.swift
//  Expense
//
//  Created by Isuru Manawadu on 26/09/2023.
//

import Foundation
import SwiftUI

class MonthBudgetModel : ObservableObject {
    
    @Published var Category : String = ""
    @Published var Duration : String = ""
    @Published var Allocate : String = ""
    
    @Published var showInMonthBudgetView : Bool = false
   
    
}
