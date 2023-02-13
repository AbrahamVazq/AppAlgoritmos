//
//  Ejercicio11ViewController.swift
//  AppAlgoritmos
//
//  Created by LUIS GONZALEZ on 03/02/23.
//

import UIKit

class Ejercicio11ViewController: UIViewController {
    
    //MARK: - OUTLETS
    
    @IBOutlet weak var lblE11: UILabel!
    @IBOutlet weak var lblTitleE11: UILabel!
    @IBOutlet weak var txtIngreseDato: UITextField!
    @IBOutlet weak var btnConvertir: UIButton!
    @IBOutlet weak var lblResultadoE11: UILabel!
    
    
    //MARK: - VARIABLES
    
    var dato: Int = 0

    
    //MARK: - LIFE · CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK: - FUNCTIONS
    
    
/*     func saveValues(){
        let : number = txtIngreseDato.text
        let doubleValue = NSString(string : number!).doubleValue
        self.dato.text = Double(txtIngreseDato. ?? "0") ?? 0    Versal = (Vel * 1000) / 3600
    } */

    func saveValues(){
        self.dato = Int(txtIngreseDato.text ?? "0" ) ?? 0
    }
    
    func convertirValue(verSal : Int){
        let velocidad = (verSal * 1000) / 3600
        self.lblResultadoE11.text = "Se convierten a \(velocidad) m/s"
    }
    
    //MARK: - ACTIONS
    
    
    @IBAction func btnConvertir(_ sender: Any) {
        saveValues()
        convertirValue(verSal: dato)
    }
    
    
    
    
    //MARK: - NAVIGATIONS
    
    
    
    

 

}
