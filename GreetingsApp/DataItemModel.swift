//
//  DataItemModel.swift
//  GreetingsApp
//
//  Created by MIKHAIL ZHACHKO on 25.10.23.
//

import SwiftUI

struct DataItemModel: Identifiable {
    let id: UUID = UUID()
    let text: String
    let color: Color
}
