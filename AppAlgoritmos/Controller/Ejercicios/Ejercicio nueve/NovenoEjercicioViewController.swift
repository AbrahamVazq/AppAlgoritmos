//
//  NovenoEjercicioViewController.swift
//  AppAlgoritmos
//
//  Created by Sem on 06/02/23.
//

import UIKit


class NovenoEjercicioViewController : UIViewController {
    
    //MARK: - OUTLETS
    
    @IBOutlet weak var txfVal: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    //MARK: - VARIABLES
    var n: Int = 0
    var x: Int = 1
    var contador: Int = 0
    
    
    //MARK: - LIFE · CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - FUNCTIONS
    func showAlert(WithTitle strTitle:String , AndMessage strMessage:String) {
        let alert = UIAlertController(title: strTitle , message: strMessage, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Aceptar", style: .default , handler: nil))
        alert.addAction(UIAlertAction(title: "Cancelar", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    func saveValues(){
        self.n = Int(txfVal.text ?? "0") ?? 0
    }
    
    
    
    func esPrimo (valor1: Int) {
        if(valor1 == 1 || valor1 == 0){    self.showAlert(WithTitle: "E R R O R", AndMessage: "Con este no se juega")
            self.txfVal.text = ""
            self.lblResult.text = "* * E R R O R * *"
        }else{
            while x <= valor1 {
                if valor1 % x == 0 {
                    contador = contador + 1
                }
                x = x + 1
            }
            if contador == 2 {
                self.lblResult.text = "\(n) ES UN NUMERO PRIMO"
                self.txfVal.text = ""
                reset()
            }else{
                self.lblResult.text = "\(n) NO ES UN NUMERO PRIMO"
                self.txfVal.text = ""
                reset()
            }
        }
    }
    
    func reset (){
        x = 1
        n = 0
        contador = 0
        
    }
    //MARK: - ACTIONS
    
    @IBAction func btnAverigua(_ sender: Any) {
        self.saveValues()
        self.esPrimo(valor1: n)
    }
    
    
    //MARK: - NAVIGATION
    
}
