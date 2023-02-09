//
//  OnceavoEjercicioViewController.swift
//  AppAlgoritmos
//
//  Created by Sem on 08/02/23.
//

import UIKit
class OnceavoEjercicioViewController : UIViewController {
    
    //MARK: - OUTLETS
    
    @IBOutlet weak var txfKm: UITextField!
    @IBOutlet weak var txfM: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    
    //MARK: - VARIABLES
    var velKm : Double = 0
    var velms: Double = 0
    
    //MARK: - LIFE · CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - FUNCTIONS
    
    func showAlert(WithTitle strTitle:String , AndMessage strMessage:String) {
        let alert = UIAlertController(title: strTitle , message: strMessage, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Aceptar", style: .default , handler: nil))
        alert.addAction(UIAlertAction(title: "Cancelar", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    func saveValues(){
        self.velKm = Double(txfKm.text ?? "0") ?? 0
        self.velms = Double(txfM.text ?? "0") ?? 0
    }
    func reinicio(){
        txfM.text = ""
        txfKm.text = ""
    }
    
    func  conKm (velocidad km: Double){
        let convAms = km / 3.6
        if km == 0 {
            self.showAlert(WithTitle: "E R R O R", AndMessage: "DEBES PONER UNA VELOCIDAD EN km/hr")
            self.lblResult.text = " ** E R R O R **"
        }else{
            self.lblResult.text = "\(convAms) m/s"
        }
    }
    
    func conms (velocidad ms: Double){
        let conAkm = ms * 3.6
        if ms == 0 {
            self.showAlert(WithTitle: "E R R O R", AndMessage: "DEBES PONER UNA VELOCIDAD EN m/s")
            self.lblResult.text = " ** E R R O R **"
        }else{
            self.lblResult.text = "\(conAkm) Km/hr"
        }
    }
    
    //MARK: - ACTIONS
    
    @IBAction func btnKmToMs(_ sender: Any) {
        saveValues()
        conKm(velocidad: velKm)
        reinicio()
        
    }
    
    @IBAction func btnMsToKm(_ sender: Any) {
        saveValues()
        conms(velocidad: velms)
        reinicio()
    }
    //MARK: - NAVIGATION
    
}
