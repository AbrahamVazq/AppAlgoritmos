//
//  TreceavoEjercicioViewController.swift
//  AppAlgoritmos
//
//  Created by Sem on 01/03/23.
//

import UIKit

class TreceavoEjercicioViewController : UIViewController {
    
    //MARK: - OUTLETS
  
    @IBOutlet weak var txfHoras: UITextField!
    
    @IBOutlet weak var lblTrabajador: UILabel!
    
    @IBOutlet weak var lblSalUnit: UILabel!
    
    @IBOutlet weak var lblTotal: UILabel!
    
    
    //MARK: - VARIABLES
    
    var Obreros: Int = 5
    var horasTra: Int = 0
    var totalNomina: Int = 0
    
    //MARK: - LIFE · CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func saveValues(){
        self.horasTra = Int(txfHoras.text ?? "0") ?? 0
       
    }
    
    
    func totalnom (horastrabajadas:Int){
        let calNom = (horastrabajadas) * 30
        lblTrabajador.self.text = "\(Obreros)"
        lblSalUnit.self.text = " Tiene un salario total de \(calNom)"
        totalNomina = totalNomina + calNom
        Obreros = Obreros - 1
    }

    func mifuncion () {
        while  Obreros > 0 {
           totalnom(horastrabajadas: horasTra)
        }
        lblTotal.self.text = "el total es de \(totalNomina)"
        
    }
    
    //MARK: - FUNCTIONS
    
    
    //MARK: - ACTIONS
   
     @IBAction func btnCalcula(_ sender: Any) {
         saveValues()
         mifuncion()
     }
     
    /*
     var Obreros: Int = 4
     var horasTra: Int = 20
     var totalNomina: Int = 0


     //MARK: - LIFE · CYCLE
     func totalnom (horastrabajadas:Int){
         let calNom = (horastrabajadas) * 30
         print("El \(Obreros) tiene una nomina total de \(calNom)")
         totalNomina = totalNomina + calNom
         Obreros = Obreros - 1
     }

     func mifuncion () {
         while  Obreros > 0 {
            totalnom(horastrabajadas: horasTra)
         }
         print("el total es de \(totalNomina)")
         
     }
     mifuncion()
    */
    //MARK: - NAVIGATION
    
}
