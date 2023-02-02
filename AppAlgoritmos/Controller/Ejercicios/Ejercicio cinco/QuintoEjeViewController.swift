//
//  QuintoEjeViewController.swift
//  AppAlgoritmos
//
//  Created by Sem on 01/02/23.
//

import UIKit

class QuintoEjeViewController: UIViewController{
    
    //MARK: - OUTLETS
    
    @IBOutlet weak var txfH: UITextField!
    @IBOutlet weak var txfR: UITextField!
    @IBOutlet weak var lblArea: UILabel!
    @IBOutlet weak var lblVolumen: UILabel!
    
    //MARK: - VARIABLES
    var r: Double = 0
    var h: Double = 0
    let pi: Double = 3.1416
    
    //MARK: - LIFE · CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    //MARK: - FUNCTIONS
    
    func saveValues(){
        self.r = Double(txfR.text ?? "0") ?? 0
        self.h = Double(txfH.text ?? "0") ?? 0
    }
    
    func volumen(radio r: Double, altura h: Double) {
        let operacion = pi * ((r*r) * h)
        print("\(operacion)")
        self.lblVolumen.text = "El Volumen es \(String(format: "%.2f", operacion))"
    }
    
    func area(radio r:Double, altura h:Double) {
        let operarea = 2 * ( pi * r * h)
        print("\(operarea)")
        
        self.lblArea.text = "El Area es \(String(format: "%.2f", operarea))"
       
    }
    //MARK: - ACTIONS
    
    @IBAction func btnCalcula(_ sender: Any) {
        self.saveValues()
        self.area(radio: r, altura: h)
        self.volumen(radio: r, altura: h)
        

    }
    
    
    
    //MARK: - NAVIGATION
    
}

