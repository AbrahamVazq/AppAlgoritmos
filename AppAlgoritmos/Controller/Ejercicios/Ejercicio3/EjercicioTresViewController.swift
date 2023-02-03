//
//  EjercicioTresViewController.swift
//  AppAlgoritmos
//
//  Created by LUIS GONZALEZ on 01/02/23.
//

import UIKit

class EjercicioTresViewController: UIViewController {

    //MARK: -OUTLETS
    
    @IBOutlet weak var lblTitleE3: UILabel!
    @IBOutlet weak var lblResultE3: UILabel!
    @IBOutlet weak var btnValidarSuma: UIButton!
    
    //MARK:- VARIABLES
    var numeros = [1,2,3,4,5,6,7,8,9,10]
    var sumaNum = 0
    var numeros5 = [5,10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90,95,100]
    var numerosPar = [2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60,62,64,66,68,70,72,74,76,78,80,82,84,86,88,90,92,94,96,98,100]
    
    
    //MARK: - LIFE · CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: - FUNCTIONS
    
    func primerResultado (){
        for sumaResultado in 1...10 {
            sumaNum = sumaResultado + sumaNum
            self.lblResultE3.text = "El resultado es \(sumaNum)"
        }
    }
    
    func segundoResultado (){
        for sumaSegResult in numeros5 {
            sumaNum = sumaSegResult + sumaNum
            self.lblResultE3.text = "El resultado es \(sumaNum)"
        }
    }

    func tercerResultado (){
        for sumaTercResult in numerosPar {
            sumaNum = sumaTercResult + sumaNum
            self.lblResultE3.text = "El resultado es \(sumaNum)"
        }
    }
    
    
   
    

    //MARK: - ACTIONS

    @IBAction func btnSumar1(_ sender: Any) {
       primerResultado()
    }
    
    @IBAction func btnSumar2(_ sender: Any) {
        segundoResultado()
    }
    
    
    @IBAction func btnSumar3(_ sender: Any) {
        tercerResultado()
    }
    
    
    
    }




