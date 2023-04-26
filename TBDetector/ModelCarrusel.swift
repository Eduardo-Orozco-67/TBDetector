//
//  ModelCarrusel.swift
//  TBDetector
//
//  Created by ADMIN UNACH on 26/04/23.
//

import SwiftUI

struct Card: Identifiable {
    var id = UUID()
    var opcion: String
    var imageName : String
    var des:String
}

var Cards:[Card]=[
    Card(opcion: "Información", imageName: "C1", des: "Informate sobre la turberculosis"),
    Card(opcion: "Diagnostico", imageName: "C2", des: "Conoce la probabilidad de presentar tuberculosis"),
    Card(opcion: "Prevencion e igene", imageName: "C3", des: "Informate sobre como prevenir la turberculosis")
]
