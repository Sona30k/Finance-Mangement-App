//
//  BlogsModel.swift
//  PennyPerfect
//
//  Created by Sona kerketta on 05/07/24.
//

import SwiftUI


// Define the Blog model
struct Blog: Identifiable {
    let id = UUID()
    let title: String
    let author: String
    let link: String
    
}
