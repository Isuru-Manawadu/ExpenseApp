//
//  IncomeModel.swift
//  Expense
//
//  Created by Isuru Manawadu on 26/09/2023.
//

import Foundation
import SwiftUI

class IncomeModel : ObservableObject {
    
    @Published var amount : String = ""
    @Published var description : String = ""
    @Published var category : String = ""
    @Published var date : String = ""
    
    
    @Published var showIncomeModel : Bool = false
}
