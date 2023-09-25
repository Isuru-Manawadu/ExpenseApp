//
//  ExpensesModel.swift
//  Expense
//
//  Created by Isuru Manawadu on 26/09/2023.
//

import Foundation
import SwiftUI

class ExpensesModel : ObservableObject {
    
    @Published var amount1 : String = ""
    @Published var description1 : String = ""
    @Published var category1: String = ""
    @Published var date1 : String = ""
    
    
    @Published var showExpensesModel : Bool = false
}
