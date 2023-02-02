//
//  CuartoEjercicioViewController.swift
//  AppAlgoritmos
//
//  Created by Sem on 01/02/23.
//

import UIKit
import Foundation

class CuartoEjercicioViewController: UIViewController {

     //MARK: - OUTLETS
     
    @IBOutlet weak var txfA: UITextField!
    @IBOutlet weak var txfB: UITextField!
    @IBOutlet weak var lblHip: UILabel!
    
    //MARK: - VARIABLES
     
    var val1:Double = 0
    var val2:Double = 0
    
     //MARK: - LIFE · CYCLE
     override func viewDidLoad() {
     super.viewDidLoad()
     }
     
     //MARK: - FUNCTIONS
    func saveValues(){
        self.val1 = Double(Int(txfA.text ?? "0") ?? 0)
        self.val2 = Double(Int(txfB.text ?? "0") ?? 0)
    }
    
    func ladotri(ladoA a: Double, ladoB b: Double) -> Double {
        let operacion = ((a * a) + (b * b)).squareRoot()
        print("\(operacion)")
        self.lblHip.text = String(operacion)
        self.txfA.text = String("")
        self.txfB.text = String("")
        return operacion
    }
    
 
    
     //MARK: - ACTIONS
     
    @IBAction func btnCalc(_ sender: Any) {
        self.saveValues()
        self.ladotri(ladoA: val1, ladoB: val2)
    }
    //MARK: - NAVIGATION
     
     }
