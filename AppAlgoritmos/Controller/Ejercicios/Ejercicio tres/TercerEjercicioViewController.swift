//
//  TercerEjercicioViewController.swift
//  AppAlgoritmos
//
//  Created by Sem on 30/01/23.
//

import UIKit

class TercerEjercicioViewController : UIViewController {
    
    //MARK: - OUTLETS

    @IBOutlet weak var txf1: UITextField!
    @IBOutlet weak var tvResult: UITextView!
    @IBOutlet weak var btnDo: UIButton!
    
    //MARK: - VARIABLES
    var num:Int  = 0
    var vec:Int = 0
    
    //MARK: - LIFE · CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - FUNCTIONS
    
    func saveValues(){
        self.vec = Int(txf1.text ?? "0") ?? 0
        
    }
    func suma(val1: Int, val2: Int ) -> Int{
        let suma = val1 + val2
            return suma
            
        }

        func sumota(veces vec:Int){
            for i in 1...vec{
                num = suma(val1: i, val2: num)
                self.tvResult.text = "La suma es igual a \(num)"
                txf1.text = ""
            
            }
        }
    
    //MARK: - ACTIONS
    
    @IBAction func btnDoIt(_ sender: Any) {
        self.saveValues()
        self.sumota(veces: vec)
      
    }
    
    //MARK: - NAVIGATION
    
}
