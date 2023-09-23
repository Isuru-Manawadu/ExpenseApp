//
//  Expense.swift
//  Expense
//
//  Created by Isuru Manawadu on 23/09/2023.
//

import SwiftUI

struct Expense : Identifiable,Hashable{
    var id = UUID().uuidString
    var remark : String
    var amount : Double
    var date : Date
    var type : ExpenseType
    var color : String

}

enum ExpenseType : String{
    case income = "Income"
    case  expense = "Expense"
    
}

var sample_expenses : [Expense] = [
    Expense(remark: "Magic Keyboard", amount: 99, date: Date(timeIntervalSince1970: 23456863), type: .expense, color: "Yellow"),
    
    Expense(remark: "Magic Mouse", amount: 99, date: Date(timeIntervalSince1970: 23456863), type: .expense,
            color: "Blue"),
    
    Expense(remark: "Magic ipad", amount: 99, date: Date(timeIntervalSince1970: 23456863), type: .expense, color: "Green"),
    
    Expense(remark: "Keyboard", amount: 99, date: Date(timeIntervalSince1970: 23456863), type: .expense, color: "Red"),
    
    Expense(remark: "Magic iwatch", amount: 99, date: Date(timeIntervalSince1970: 23456863), type: .expense, color: "Pink"),
]
