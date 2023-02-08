//
//  Ejercicio8ViewController.swift
//  AppAlgoritmos
//
//  Created by LUIS GONZALEZ on 03/02/23.
//

import UIKit

class Ejercicio8ViewController: UIViewController {
    
    //MARK: - OUTLETS

    @IBOutlet weak var lblE8: UILabel!
    @IBOutlet weak var lblTitleE8: UILabel!
    @IBOutlet weak var txtPrimernumero: UITextField!
    @IBOutlet weak var txtSegundoNumero: UITextField!
    @IBOutlet weak var btnOrdenarNumeros: UIButton!
    @IBOutlet weak var lblResultadoE8: UILabel!


    //MARK: - VARIABLES
    
    var prNum: Int = 0
    var sgNum: Int = 0

    
    //MARK: - LIFE · CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()

    }

//MARK: - FUNCTIONS
    
    
    func saveValuesE8(){
        self.prNum = Int(txtPrimernumero.text ?? "0") ?? 0
        self.sgNum = Int(txtSegundoNumero.text ?? "0") ?? 0
    }
    
    func ordenarNumerosMenAMay(primNum: Int, segundNum: Int){
        if primNum < segundNum{
            self.lblResultadoE8.text = "El numero \(primNum) es menor que \(segundNum)"
        }else{
            self.lblResultadoE8.text = "El numero \(segundNum) es menor que \(primNum)"
        }
    }
    
    
//MARK: - ACTIONS
    
    
    @IBAction func btnOrdenarNum(_ sender: Any) {
        saveValuesE8()
        ordenarNumerosMenAMay(primNum: prNum, segundNum: sgNum)
    }
    
    
    
    
//MARK: - NAVIGATIONS
    
    
    

  

}
