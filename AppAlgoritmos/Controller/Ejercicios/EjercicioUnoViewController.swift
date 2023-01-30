//  EjercicioUnoViewController.swift
//  AppAlgoritmos
//  Created by Moises Abraham Vazquez Perez on 25/01/23.

import UIKit

class EjercicioUnoViewController: UIViewController {
    //MARK: - OUTLETS
    @IBOutlet weak var txfV1: UITextField!
    @IBOutlet weak var txfV2: UITextField!
    @IBOutlet weak var btnValida: UIButton!
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
        if txfV1.text == ""{
            self.showAlert(WithTitle: "¡A L G O   F A L T A!", AndMessage: "Ingresa el primer valor")
            return false
        }else if txfV2.text == "" {
            self.showAlert(WithTitle: "¡A L G O    F A L T A!", AndMessage: "Ingresa el segundo valor")
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
        self.valor1 = Int(txfV1.text ?? "0") ?? 0
        self.valor2 = Int(txfV2.text ?? "0") ?? 0
    }
    
    func valida(value1: Int, value2: Int) {
        if value1 == value2{
            self.showAlert(WithTitle: "A L G O   A N D A   M A L", AndMessage: "Ambos numeros son iguales")
            txfV1.text = ""
            txfV2.text = ""
        }else if value1 > value2 {
            self.lblResult.text = "\(value1) es mayor que \(value2)"
        }else{
            self.lblResult.text = "\(value2) es mayor que \(value1)"
        }
    }
    
    //MARK: - ACTIONS
    
    @IBAction func goToValidation(_ sender: Any) {
        if validateTXF() {
            self.saveValues()
            self.valida(value1: valor1, value2: valor2)
        }
    }
   
    
    //MARK: - NAVIGATION
    
    
}
