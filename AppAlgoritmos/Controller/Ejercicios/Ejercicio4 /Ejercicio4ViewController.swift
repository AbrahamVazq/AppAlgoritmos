//
//  Ejercicio4ViewController.swift
//  AppAlgoritmos
//
//  Created by LUIS GONZALEZ on 03/02/23.
//

import UIKit

class Ejercicio4ViewController: UIViewController {

    //MARK: - OUTLETS
    
    @IBOutlet weak var lblEjercicio4: UILabel!
    @IBOutlet weak var lblTitleE4: UILabel!
    @IBOutlet weak var txtCatetoA: UITextField!
    @IBOutlet weak var txtCatetoB: UITextField!
    @IBOutlet weak var lblResultHipotenusa: UILabel!
    @IBOutlet weak var btnCalcularHip: UIButton!
    
    
    
    
    //MARK: - VARIABLES
    
    var catetoA: Double = 0
    var catetoB: Double = 0
    
    
    //MARK: - LIFE · CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    //MARK: - FUNCTIONS

    func saveValue() {
        self.catetoA = Double(txtCatetoA.text ?? "0") ?? 0
        self.catetoB = Double(txtCatetoB.text ?? "0") ?? 0
    }
    
    func hypotenuse(_ a: Double, _ b: Double) {
        var hip = (a * a + b * b).squareRoot()
        self.lblResultHipotenusa.text = "El valor de la Hipotenusa es \(hip)"
    }
    
    //MARK: - ACTIONS

    @IBAction func btnCalculateHip(_ sender: Any) {
        saveValue()
        hypotenuse(catetoA, catetoB)
    }
    
    
    
    
    
    //MARK: - NAVIGATION




}
