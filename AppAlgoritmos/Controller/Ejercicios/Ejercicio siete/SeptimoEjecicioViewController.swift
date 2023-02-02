//
//  SeptimoEjecicioViewController.swift
//  AppAlgoritmos
//
//  Created by Sem on 01/02/23.
//

import UIKit
class SeptimoEjecicioViewController : UIViewController {
    
    //MARK: - OUTLETS
    
    @IBOutlet weak var lblNota: UILabel!
    @IBOutlet weak var txtpuntos: UITextField!
    
    //MARK: - VARIABLES
    var nota: Int = 0
    
    //MARK: - LIFE · CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - FUNCTIONS
    func saveValues(){
        self.nota = Int(txtpuntos.text ?? "0") ?? 0
    }
    
    func calificacion(conNota puntos:Int){
        switch(puntos){
        case 19,20:
            print("La nota es A")
            self.lblNota.text = "A"
            self.txtpuntos.text = ""
        case 16...18:
            print("La nota es B")
            self.lblNota.text = "B"
            self.txtpuntos.text = ""
        case 13...15:
            print("La nota es C")
            self.lblNota.text = "C"
            self.txtpuntos.text = ""
        case 10...12:
            print("La nota es D")
            self.lblNota.text = "D"
            self.txtpuntos.text = ""
        case 1...9:
            print("La nota es E")
            self.lblNota.text = "E"
            self.txtpuntos.text = ""

        default:
          break
        }
    }
    
    /*self.lblResult.text = "Efectivamente este es un numero \nP A R"
     self.txfNum.text = ""*/
   
    //MARK: - ACTIONS
    
    @IBAction func btnVamos(_ sender: Any) {
        self.saveValues()
        self.calificacion(conNota: nota)
    }
    //MARK: - NAVIGATION
    
}
