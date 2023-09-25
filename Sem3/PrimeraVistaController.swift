//
//  ViewController.swift
//  Sem3
//
//  Created by krlos90 on 23/09/23.
//

import UIKit

class PrimeraVistaController: UIViewController {

    
    @IBOutlet weak var txtNombre: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onSaludar(_ sender: UIButton) {
        //Primera forma para asignar un valor por defecto y que no salga Optional("Nombre")
        let valorNombre = txtNombre.text ?? ""
        print(valorNombre)
        
        //2da forma para que no imprima Optional(Nombre)
        if let valorNombre2 = txtNombre.text {
            print(valorNombre2)
        }
        
        //3ra forma para que no imprima Optional(Nombre)
        guard let valorNombre3 = txtNombre.text else {
            print("Valor Nulo")
            return //El return hace que la aplicaciòn se detenga (Que ejecute hasta aqui)
        }
        
        print(valorNombre3)
    }
}

