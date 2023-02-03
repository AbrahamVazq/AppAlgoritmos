//
//  EjercicioDosViewController.swift
//  AppAlgoritmos
//
//  Created by LUIS GONZALEZ on 01/02/23.
//

import UIKit

class EjercicioDosViewController: UIViewController {
    //MARK: - OUTLETS
    
    @IBOutlet weak var lblTitleE2: UILabel!
    @IBOutlet weak var txtIngrN1: UITextField!
    @IBOutlet weak var txtIngrN2: UITextField!
    @IBOutlet weak var txtIngrN3: UITextField!
    @IBOutlet weak var lblResultE2: UILabel!
    
    @IBOutlet weak var btnValidResult: UIButton!
    
    //MARK: - VARIABLES
    var valor1E2: Int = 0
    var valor2E2: Int = 0
    var valor3E2: Int = 0
    
    
    //MARK: - LIFE · CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - FUNCTIONS
    
    func validTxt() -> Bool {
        if txtIngrN1.text == ""{
            self.lblResultE2.text = "Ingresa el valor en el primer campo, por favor!"
            return false
        }else if txtIngrN2.text == "" {
            self.lblResultE2.text = "Ingresa el valor en el segundo campo, por favor!"
            return false
        }else if txtIngrN3.text == "" {
            self.lblResultE2.text = "Ingresa el valor en el tercer campo, por favor!"
            return false
        }else{
            return true
        }
    }
        func saveVal(){
            self.valor1E2 = Int(txtIngrN1.text ?? "0") ?? 0
            self.valor2E2 = Int(txtIngrN2.text ?? "0") ?? 0
            self.valor3E2 = Int (txtIngrN3.text ?? "0") ?? 0
        }
        
        
        func validaIguales(valor1: Int, valor2: Int, valor3: Int) {
            if (valor1 == valor2) && (valor2 == valor3) && (valor1 == valor3){
                self.lblResultE2.text = "Todos los valores son iguales, ingresa valores nuevamente"
                txtIngrN1.text = ""
                txtIngrN2.text = ""
                txtIngrN3.text = ""
            }else if valor1 == valor2 {
                self.lblResultE2.text = "Los dos primeros valores son iguales, ingresa valores nuevamente"
                txtIngrN1.text = ""
                txtIngrN2.text = ""
                txtIngrN3.text = ""
            }else if valor2 == valor3 {
                self.lblResultE2.text = "Los dos ultimos valores son iguales, ingresa valores nuevamente"
                txtIngrN1.text = ""
                txtIngrN2.text = ""
                txtIngrN3.text = ""
            }else if valor1 == valor3 {
                self.lblResultE2.text = "Hay valores iguales, ingresa valores nuevamente"
            }else if (valor1 > valor2) && (valor1 > valor3) {
                self.lblResultE2.text = "\(valor1) es mayor que \(valor2) y \(valor3)."
            }else if (valor2 > valor1) && (valor2 > valor3) {
                self.lblResultE2.text = "\(valor2) es mayor que \(valor1) y \(valor3)."
            }else {
                self.lblResultE2.text = "\(valor3) es mayor que \(valor1) y \(valor2)."
            }
        }
        
       /* func validaDesiguales(valor1: Int, valor2: Int, valor3: Int) {
            if (valor1 > valor2) && (valor1 > valor3) {
                self.lblResultE2.text = "\(valor1) es mayor que \(valor2) y \(valor3)."
            }else if (valor2 > valor1) && (valor2 > valor3) {
                self.lblResultE2.text = "\(valor2) es mayor que \(valor1) y \(valor3)."
            }else {
                self.lblResultE2.text = "\(valor3) es mayor que \(valor1) y \(valor2)."
            }
        }*/
        
        //MARK: - ACTIONS
        
    @IBAction func validation(_ sender: Any) {
        if validTxt() {
            self.saveVal()
            self.validaIguales(valor1: valor1E2, valor2: valor2E2, valor3: valor3E2)
            //self.validaDesiguales(valor1: valor1E2, valor2: valor2E2, valor3: valor3E2)
        }
    }
    
        
        

    }


