//
//  Ejercicio5ViewController.swift
//  AppAlgoritmos
//
//  Created by LUIS GONZALEZ on 03/02/23.
//

import UIKit

class Ejercicio5ViewController: UIViewController {
    
    
    //MARK: - OUTLETS
    
    @IBOutlet weak var lblEjercici5: UILabel!
    @IBOutlet weak var lblTitleE5: UILabel!
    @IBOutlet weak var txtRadioCilindro: UITextField!
    @IBOutlet weak var txtAlturaCilindro: UITextField!
    @IBOutlet weak var lblArea: UILabel!
    @IBOutlet weak var lblVolumen: UILabel!
    @IBOutlet weak var btnCalculaAreaYVolumen: UIButton!
    
    // MARK: - VARIABLES
    
    var altura: Double = 0
    var radio: Double = 0
    let pi: Double = 3.14
    
    
    // MARK: - LIFE . CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - FUNCTIONS
    
    func saveValues(){
        self.altura = Double(txtAlturaCilindro.text ?? "0") ?? 0
        self.radio = Double(txtRadioCilindro.text ?? "0") ?? 0
    }
    
    func areaYVolumenCilindro(h: Double, r: Double){
        let area = 2 * pi * r * ( h + r )
        self.lblArea.text = "El area del cilindro es \(area) cm²"
        let volu = pi * ( r * r ) * h
        self.lblVolumen.text = "El volumen del cilindro es \(volu) cm³"
    }
    
    
    //MARK: - ACTIONS
    

    @IBAction func resultadosCilindro(_ sender: Any) {
        saveValues()
        areaYVolumenCilindro(h: altura, r: radio)
    }
    
    
    
    // MARK: - NAVIGATION
    


  

}
