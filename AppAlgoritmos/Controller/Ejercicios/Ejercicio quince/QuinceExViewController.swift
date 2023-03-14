//
//  QuinceExViewController.swift
//  AppAlgoritmos
//
//  Created by Sem on 06/03/23.
//

import UIKit

class QuinceExViewController : UIViewController {
    
    //MARK: - OUTLETS
    
    @IBOutlet weak var txfDias: UITextField!
    
    @IBOutlet weak var lblResult: UILabel!
    
    //MARK: - VARIABLES
    var dys : Int = 0
    
    //MARK: - LIFE · CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - FUNCTIONS
    
    func saveValues(){
        self.dys = Int(txfDias.text ?? "0") ?? 0
    }
    
    func showAlert(WithTitle strTitle:String , AndMessage strMessage:String) {
        let alert = UIAlertController(title: strTitle , message: strMessage, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Aceptar", style: .default , handler: nil))
        alert.addAction(UIAlertAction(title: "Cancelar", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    func validateTXF() -> Bool {
        if txfDias.text == ""{
            self.showAlert(WithTitle: "¡A L G O   F A L T A!", AndMessage: "Ingresa una cantidad de dias considerable")
            return false
        }else if txfDias.text == "0" {
            self.showAlert(WithTitle: "¡A L G O    F A L T A!", AndMessage: "ponlo mas dificil")
            return false
        }
        return true
    }
    
    func reinicio(){
        txfDias.text = ""
    }
    func daysCalcul(days : Int ){
        var anios = 0
        var meses = 0
        var semanas = 0
        var dias = days
        
        while (dias >= 365){
            anios += 1
            dias = dias - 365}
        while (dias >= 30){
            meses += 1
            dias = dias - 30}
        while (dias >= 7){
            semanas += 1
            dias = dias - 7}
        
        self.lblResult.text = "\(days) dias equivalen a \(anios) años,\(meses) meses,\(semanas) semanas y \(dias) dias"
        
        reinicio()
    }
    //MARK: - ACTIONS
    
    @IBAction func btnCalcu(_ sender: Any) {
        if  validateTXF(){
            saveValues()
            daysCalcul(days: dys)
        }
    }
    
    @IBAction func goToOtherCalc(_ sender: Any) {
        
            let ed = QuinceBisViewController(nibName: "QuinceBisViewController", bundle: .main)
            self.present(ed, animated: true)
    }
    
    //MARK: - NAVIGATION
    
}
