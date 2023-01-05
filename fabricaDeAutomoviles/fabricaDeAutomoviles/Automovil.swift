//
//  Automovil.swift
//  fabricaDeAutomoviles
//
//  Created by Layla Cisneros on 05/01/2023.
//

import Foundation
// los nombres de las clases van con mayusculas 
class Automovil {
    var color = "neutro"
    let numeroLlantas = 4
    var precio = 5000
    
    func encender() -> Bool {
        return true
    }
    
    func apagar() -> Bool {
        return false
    }
    
    func acelerar() -> String {
        return "Acelaracion exitosa"
    }
}
