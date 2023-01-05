//
//  ViewController.swift
//  fabricaDeAutomoviles
//
//  Created by Layla Cisneros on 05/01/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabelFabricaDeAutomoviles: UILabel!
    
    var tipoDeAuto: Int?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /* creamos un objeto de la clase automovil
         let automovil = Automovil()
         print("\(automovil.encender())")
         }*/
        
        
    }
    
    @IBAction func crearAutomovilSencillo(_ sender: Any) {
        //guardas el tipo de auto que vas a mostrar para poder pasarselo al siguiente view controller
        tipoDeAuto = 0
        //Ejecuta el Segue, que cambia a la segunda pantalla
        performSegue(withIdentifier: "segundaPantallaSegue", sender: self)
    }
    
    
    @IBAction func crearAutomovilMazda(_ sender: Any) {
        //guardas el tipo de auto que vas a mostrar para poder pasarselo al siguiente view controller
        tipoDeAuto = 1
        //Ejecuta el Segue, que cambia a la segunda pantalla
        performSegue(withIdentifier: "segundaPantallaSegue", sender: self)
    }
    
    
    //Se ejecuta antes de cambiar de pantalla ( view controller)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Con esto se consigue la referencia a la pantalla (view cotroller) que se va a mostrar
        if let viewController = segue.destination as? SegundaPantallaViewController {
            //se le asigna un valor a la propiedad del view controller que se va a mostrar
            viewController.tipoDeAuto = self.tipoDeAuto!
        }
    }
    
    
}

