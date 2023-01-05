//
//  SegundaPantallaViewController.swift
//  fabricaDeAutomoviles
//
//  Created by Layla Cisneros on 05/01/2023.
//

import UIKit

class SegundaPantallaViewController: UIViewController {
    
    @IBOutlet weak var myLabelInformacion: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    var tipoDeAuto: Int?
    var autoSencillo : Automovil?
    var autoMazda : AutomovillMazda?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if tipoDeAuto! == 0 {
            autoSencillo = Automovil()
            myImage.image = UIImage(named: "corolla")
            myLabelInformacion.text = "Creaste un automovil sencillo"
        } else {
            autoMazda = AutomovillMazda()
            myImage.image = UIImage(named: "mazda")
            myLabelInformacion.text = "Creaste un automovil Mazda"
        }
    }
    
    @IBAction func mostrarInformacion(_ sender: Any) {
        if tipoDeAuto! == 0 {
            myLabelInformacion.text = "El automovil tiene un color \(autoSencillo!.color), \(autoSencillo!.numeroLlantas) llantas y su precio es de \(autoSencillo!.precio) USD."
        } else {
            myLabelInformacion.text = "El automovil tiene un color \(autoMazda!.color), \(autoMazda!.numeroLlantas) llantas, su precio es de \(autoMazda!.precio) USD y su porcentaje de bateria es de \(autoMazda!.porcentajeBateria)"
        }
    }
    
    @IBAction func encender(_ sender: Any) {
        myLabelInformacion.text = "El automovil esta encendido"
    }
    
    @IBAction func apagar(_ sender: Any) {
        myLabelInformacion.text = "El automovil esta apagado"
    }
    
    @IBAction func acelerar(_ sender: Any) {
        myLabelInformacion.text = "Aceleracion exitosa"
    }
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */

}
