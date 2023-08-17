//
//  UserInfo.swift
//  SwiftUI-App
//
//  Created by Bhushan  Borse on 10/08/23.
//

import Foundation
import SwiftUI

class UserInfo: ObservableObject {
    @Published var name: String = String()
}

class UserAccount: ObservableObject {
    @Published var accountBalance: Double = 0.0
}
