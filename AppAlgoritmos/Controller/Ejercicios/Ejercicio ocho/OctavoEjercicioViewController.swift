//
//  OctavoEjercicioViewController.swift
//  AppAlgoritmos
//
//  Created by Sem on 06/02/23.
//

import UIKit

class OctavoEjercicioViewController : UIViewController {
    
    //MARK: - OUTLETS
    
    @IBOutlet weak var txfValUno: UITextField!
    @IBOutlet weak var txfValDos: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    
    
    //MARK: - VARIABLES
    var valor1: Int = 0
    var valor2: Int = 0
    
    
    //MARK: - LIFE · CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - FUNCTIONS
    func validateTXF() -> Bool {
        if txfValUno.text == ""{
            self.showAlert(WithTitle: "¡A L G O   F A L T A!", AndMessage: "Ingresa el primer valor")
            return false
        }else if txfValDos.text == "" {
            self.showAlert(WithTitle: "¡A L G O    F A L T A!", AndMessage: "Ingresa el segundo va  lor")
        }else{
            return true
        }
        return true
    }
    
    
    func showAlert(WithTitle strTitle:String , AndMessage strMessage:String) {
            let alert = UIAlertController(title: strTitle , message: strMessage, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Aceptar", style: .default , handler: nil))
            alert.addAction(UIAlertAction(title: "Cancelar", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    
    
    func saveValues(){
        self.valor1 = Int(txfValUno.text ?? "0") ?? 0
        self.valor2 = Int(txfValDos.text ?? "0") ?? 0
    }
    
    func valida(value1: Int, value2: Int) {
        if value1 == value2{
            self.showAlert(WithTitle: "¡EY, EY , EY!", AndMessage: "Ambos valore son iguales, asi no puedo trabajar")
            self.txfValUno.text = ""
            self.txfValDos.text = ""
        }else if value1 > value2 {
            self.lblResult.text = "Orden:  \(value2), \(value1)"
        }else{
            self.lblResult.text = "Orden:  \(value1), \(value2)"
        }
    }
    
    
    //MARK: - ACTIONS
    @IBAction func btnValida(_ sender: Any) {
        if validateTXF() {
            self.saveValues()
            self.valida(value1: valor1, value2: valor2)
            self.txfValUno.text = ""
            self.txfValDos.text = ""
            
        }
    }
    

    
    //MARK: - NAVIGATION
    
}
