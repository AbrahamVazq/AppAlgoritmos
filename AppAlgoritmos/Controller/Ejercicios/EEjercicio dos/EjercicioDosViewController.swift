//
//  EjercicioDosViewController.swift
//  AppAlgoritmos
//
//  Created by Sem on 30/01/23.
//

import UIKit

class EjercicioDosViewController: UIViewController {
        //MARK: - OUTLETS
        
    @IBOutlet weak var txf1: UITextField!
    @IBOutlet weak var txf2: UITextField!
    @IBOutlet weak var txf3: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    //MARK: - VARIABLES
    var valor1: Int = 0
    var valor2: Int = 0
    var valor3: Int = 0
    

        //MARK: - LIFE · CYCLE
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        }
        
        //MARK: - FUNCTIONS
    
    func saveValues(){
        self.valor1 = Int(txf1.text ?? "0") ?? 0
        self.valor2 = Int(txf2.text ?? "0") ?? 0
        self.valor3 = Int(txf3.text ?? "0") ?? 0
    }
        
    func showAlert(WithTitle strTitle:String , AndMessage strMessage:String) {
            let alert = UIAlertController(title: strTitle , message: strMessage, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Aceptar", style: .default , handler: nil))
            alert.addAction(UIAlertAction(title: "Cancelar", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
 
    
 func validateTXF() -> Bool {
        if txf1.text == ""{
            self.showAlert(WithTitle: "¡A L G O   F A L T A!", AndMessage: "Ingresa el primer valor")
            return false
        }else if txf2.text == "" {
            self.showAlert(WithTitle: "¡A L G O    F A L T A!", AndMessage: "Ingresa el segundo valor")
            return false
        }else if txf3.text == "" {
            self.showAlert(WithTitle: "¡A L G O   F A L T A!", AndMessage: "Ingresa el tercer valor")
            return false
        }
     
        return true
    }
    
    func reinicio(){
        txf1.text = ""
        txf2.text = ""
        txf3.text = ""
    }
    
    func validaDif(val1: Int, val2: Int, val3: Int) -> Bool {
        if val1 == val2{
            self.showAlert(WithTitle: "A L G O   A N D A   M A L", AndMessage: "los valores deben ser diferentes")
            self.lblResult.text = "intenta de nuevo"
            reinicio()
            return false
        }else if val1 == val3{
            self.showAlert(WithTitle: "A L G O   A N D A   M A L", AndMessage: "los valores deben ser diferentes")
            self.lblResult.text = "intenta de nuevo"
           reinicio()
            return false
        }else if val2 == val3 {
            self.showAlert(WithTitle: "A L G O   A N D A   M A L", AndMessage: "los valores deben ser diferentes")
            self.lblResult.text = "intenta de nuevo"
            reinicio()
        }
        return true
    }
    
    func validaMayor(val1: Int, val2: Int, val3: Int) {
        if (val1 > val2) && (val1 > val3) {
            self.lblResult.text = "\(val1) es el mayor"
            reinicio()
        }else if (val2 > val1) && (val2 > val3) {
            self.lblResult.text = "\(val2) es el mayor"
           reinicio()
        }else{
            self.lblResult.text = "\(val3) es el mayor"
            reinicio()
        }
    }
    

        //MARK: - ACTIONS
  
    @IBAction func btnResult(_ sender: Any) {
        if validateTXF() {
            self.saveValues()
            if self.validaDif(val1: valor1, val2: valor2, val3: valor3){
                self.validaMayor(val1: valor1, val2: valor2, val3: valor3)
            }
        }
        
    }
    //MARK: - NAVIGATION
}
