//
//  Ejercicio9ViewController.swift
//  AppAlgoritmos
//
//  Created by LUIS GONZALEZ on 03/02/23.
//

import UIKit

class Ejercicio9ViewController: UIViewController {

    //MARK: - OUTLET
    
    @IBOutlet weak var lblE9: UILabel!
    @IBOutlet weak var lblTitleE9: UILabel!
    @IBOutlet weak var txtIngNum: UITextField!
    @IBOutlet weak var btnValidarNumImpar: UIButton!
    @IBOutlet weak var lblResultadoE9: UILabel!
    
    //MARK: - VARIABLES
    
    var ingNum: Int = 0
    
    //MARK: - CYCLE ' LIFE
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - FUNCTIONS
    
    
    func saveValuesE9(){
        self.ingNum = Int(txtIngNum.text ?? "0") ?? 0
    }
    
    
    func determNumImpar(numIng:Int){
        if numIng % 2 == 0{
            self.lblResultadoE9.text = "El numero no es primo."
        }else{
            self.lblResultadoE9.text = "Es un numero primo."

        }
    }
    
    //MARK: - ACTIONS
    
    
    @IBAction func btnDefinNumPrimo(_ sender: Any) {
        saveValuesE9()
        determNumImpar(numIng: ingNum)
    }
    
    
    
    
    //MARK: - NAVIGATIONS
    
    
    


 

}
