//
//  LoginViewModel.swift
//  Expense
//
//  Created by Isuru Manawadu on 23/09/2023.
//

import SwiftUI
import Foundation
import SwiftUI

class LoginViewModel : ObservableObject {
    
    @Published var email : String = ""
    @Published var password : String = ""
    @Published var confirmPassword : String = ""
    
    @Published var showSignInView : Bool = false
   
    
}
