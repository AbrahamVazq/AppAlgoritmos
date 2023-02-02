//
//  SextoEjercicioViewController.swift
//  AppAlgoritmos
//
//  Created by Sem on 01/02/23.
//

import UIKit
class SextoEjercicioViewController : UIViewController {
    
    //MARK: - OUTLETS
    
    @IBOutlet weak var txfNum: UITextField!
    
    @IBOutlet weak var lblResult: UILabel!
    //MARK: - VARIABLES
    var n: Int = 0
    
    //MARK: - LIFE · CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - FUNCTIONS
    func saveValues(){
        self.n = Int(txfNum.text ?? "0") ?? 0
    }
    
    func numPar (num n:Int ){
        if n % 2 == 0 {
            print("Es un numero par")
            self.lblResult.text = "Efectivamente este es un numero \nP A R"
            self.txfNum.text = ""
        }else{
            print("Es un numero impar")
            self.lblResult.text = "Este numero es conocido por ser \nI M P A R"
            self.txfNum.text = ""
        }
    }
  
    //MARK: - ACTIONS
    
    @IBAction func btnAver(_ sender: Any) {
        self.saveValues()
        self.numPar(num: n)
    }
    //MARK: - NAVIGATION
    
}
