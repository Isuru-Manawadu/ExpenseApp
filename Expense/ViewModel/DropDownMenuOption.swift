//
//  DropDownMenuOption.swift
//  Expense
//
//  Created by Isuru Manawadu on 26/09/2023.
//

import Foundation

struct DropdDownMenuOption : Identifiable, Hashable {
    let id = UUID().uuidString
    let option : String
}

extension DropdDownMenuOption {
    static let testOne : DropdDownMenuOption = DropdDownMenuOption(option: "Health")
    static let testAll : [DropdDownMenuOption] = [
    DropdDownMenuOption(option: "Health"),
    DropdDownMenuOption(option: "Security"),
    DropdDownMenuOption(option: "Food"),
    DropdDownMenuOption(option: "Transport"),
    DropdDownMenuOption(option: "Clothes"),
    DropdDownMenuOption(option: "Housing Loan")
    
    
    
    
    
    ]
}
