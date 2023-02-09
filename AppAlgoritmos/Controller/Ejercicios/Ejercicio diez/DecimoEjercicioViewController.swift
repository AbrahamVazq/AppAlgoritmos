//
//  DecimoEjercicioViewController.swift
//  AppAlgoritmos
//
//  Created by Sem on 08/02/23.
//

import UIKit

class DecimoEjercicioViewController : UIViewController {
    
    //MARK: - OUTLETS
    
    @IBOutlet weak var txfHE: UITextField!
    @IBOutlet weak var txfHS: UITextField!
    @IBOutlet weak var lblTotal: UILabel!
    
    
    //MARK: - VARIABLES
    
    
    var horEnt: Int = 0
    var hotSal: Int = 0
    var minEnt: Int = 0
    var minSal: Int = 0
    var horTotal: Int = 0
    var pago: Int = 0
    
    //MARK: - LIFE · CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - FUNCTIONS
    func saveValues(){
        self.horEnt = Int(txfHE.text ?? "0") ?? 0
        self.hotSal = Int(txfHS.text ?? "0") ?? 0
        
    }
    
    func showAlert(WithTitle strTitle:String , AndMessage strMessage:String) {
        let alert = UIAlertController(title: strTitle , message: strMessage, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Aceptar", style: .default , handler: nil))
        alert.addAction(UIAlertAction(title: "Cancelar", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    func validateTXF() -> Bool {
        if txfHE.text == ""{
            self.showAlert(WithTitle: "¡A L G O   F A L T A!", AndMessage: "Ingresa hora de entrada")
            return false
        }else if txfHS.text == "" {
            self.showAlert(WithTitle: "¡A L G O    F A L T A!", AndMessage: "Ingresa hora de salida")
            return false
        }
        return true
    }
    
    func reinicio(){
        txfHE.text = ""
        txfHS.text = ""
    }
    
    func validaHoras(entrada he:Int, salida hs:Int){
        if he > 2400{
            self.showAlert(WithTitle: "E R R O R", AndMessage: "EL DIA NO DURA MAS DE 24 HORAS")
            print("haces trampa")
        } else if hs > 2400 {
            self.showAlert(WithTitle: "E R R O R", AndMessage: "EL DIA NO DURA MAS DE 24 HORAS")
            print("haces trampa 2")
        } else {
            print("todo ok")
        }
    }
    
    
    func validaH2(entrada he:Int, salida hs:Int){
        if he >= hs {
            self.showAlert(WithTitle: "E R R O R", AndMessage: "ESCRIBISTE ALGO MAL")
            print("Esto no deberia de ser")
        } else{
            print("todo ok")
        }
    }
    
    func cobro(entrada he: Int, salida hs: Int){
        let estadia = hs - he
        if estadia <= 100{
            self.lblTotal.text = "$ \(((estadia)/100)+(1000))"
            print("Debes pagar $ \(((estadia)/100)+(1000))")
        }else if
            estadia % 100 == 0
        {
            let estadia2 = (((estadia - 100)/100)*600)
            self.lblTotal.text = "$ \((estadia2) + 1000)"
            print("Debes pagar $ \((estadia2) + 1000)")
        } else if
            estadia % 100 != 0 {
            let estadia3 = ((((estadia - 100)/100)*600) + 600)
            self.lblTotal.text = "$ \((estadia3) + 1000)"
            print("Debes pagar $ \((estadia3) + 1000)")
        }
    }
    
    
    
    func todo(){
        validaHoras(entrada: horEnt, salida: hotSal)
        validaH2(entrada: horEnt, salida: hotSal)
        cobro(entrada: horEnt, salida: hotSal)
    }
    
    //MARK: - ACTIONS
    
    @IBAction func btnCheck(_ sender: Any) {
        
        if validateTXF(){
            reinicio()
            todo()
        }
        
    }
    //MARK: - NAVIGATION
    
}
