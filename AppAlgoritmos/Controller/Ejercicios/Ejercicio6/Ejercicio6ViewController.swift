//
//  Ejercicio6ViewController.swift
//  AppAlgoritmos
//
//  Created by LUIS GONZALEZ on 03/02/23.
//

import UIKit

class Ejercicio6ViewController: UIViewController {
    //MARK: - OUTLETS
    
    @IBOutlet weak var lblEjercicio6: UILabel!
    @IBOutlet weak var lblTitleE6: UILabel!
    @IBOutlet weak var txtIngreaNumero: UITextField!
    @IBOutlet weak var btnValidaNumero: UIButton!
    @IBOutlet weak var lblResultadoParImpar: UILabel!
    
    
    
    
    //MARK: - VARIABLES
    
    var validNum: Int = 0
    
    
    
    //MARK: - LIFE · CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - FUNCTIONS
    
    func saveValueParImpar(){
        self.validNum = Int(txtIngreaNumero.text ?? "0") ?? 0
    }
    
    func parImpar(numero: Int){
        if numero % 2 == 0 {
            self.lblResultadoParImpar.text = "El numero es PAR"
        }else{
            self.lblResultadoParImpar.text = "El numero es IMPAR"
        }
    }
        
        
        
        
        //MARK: - ACTIONS
        
    @IBAction func btnValidaNumero(_ sender: Any) {
        saveValueParImpar()
        parImpar(numero: validNum)
    }
    
        
        
        //MARK: - NAVIGATION
        
        

}
