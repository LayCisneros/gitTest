//
//  AutomovilMazda.swift
//  fabricaDeAutomoviles
//
//  Created by Layla Cisneros on 05/01/2023.
//

import Foundation

class AutomovillMazda: Automovil {
    var porcentajeBateria =  100
    
    func cargarBateria() -> String {
        porcentajeBateria = 100
        return "Carga exitosa"
    }
}
