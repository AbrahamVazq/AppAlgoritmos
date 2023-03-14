//
//  QuinceBisViewController.swift
//  AppAlgoritmos
//
//  Created by Sem on 13/03/23.
//

import UIKit


class QuinceBisViewController : UIViewController {
    
    //MARK: - OUTLETS
    
    @IBOutlet weak var txgYears: UITextField!
    @IBOutlet weak var txfMonths: UITextField!
    @IBOutlet weak var txfiWeeks: UITextField!
    @IBOutlet weak var txfdays: UITextField!
    
    @IBOutlet weak var lblResult: UILabel!
    
    //MARK: - VARIABLES
    var yrs: Int = 0
    var mnths: Int = 0
    var wks: Int = 0
    var dys: Int = 0
    
    //MARK: - LIFE · CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - FUNCTIONS
    
    
    func saveValues(){
        self.yrs = Int(txgYears.text ?? "0") ?? 0
        self.mnths = Int(txfMonths.text ?? "0") ?? 0
        self.wks = Int(txfiWeeks.text ?? "0") ?? 0
        self.dys = Int(txfdays.text ?? "0") ?? 0
    }
    
    func showAlert(WithTitle strTitle:String , AndMessage strMessage:String) {
        let alert = UIAlertController(title: strTitle , message: strMessage, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Aceptar", style: .default , handler: nil))
        alert.addAction(UIAlertAction(title: "Cancelar", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
       
       func reinicio(){
           txfdays.text = ""
           txgYears.text = ""
           txfiWeeks.text = ""
           txfMonths.text = ""
       }
    func daysCalcul2 (years:Int, months:Int, weeks:Int, days:Int){
        var anios = years
        var meses = months
        var semanas = weeks
        var dias = days
        var dayz = 0
       
        
        while (anios >= 1){
            dayz += 365
            anios = anios - 1
        }
        while (meses >= 1){
            dayz += 30
            meses = meses - 1}
        while (semanas >= 1){
            dayz += 7
            semanas = semanas - 1
        }
        while ( dias >= 1){
            dayz += 1
            dias = dias - 1
        }
        
        self.lblResult.text = "Mis calculos indican que equivalen a \(dayz) dias "
        reinicio()

    }
    
    //MARK: - ACTIONS
    
    @IBAction func btnCal(_ sender: Any) {
        saveValues()
       
            daysCalcul2(years: yrs, months: mnths, weeks: wks, days: dys)
    
    }
    
    //MARK: - NAVIGATION
    
}
