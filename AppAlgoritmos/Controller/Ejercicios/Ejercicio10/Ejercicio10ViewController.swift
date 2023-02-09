

import UIKit

class Ejercicio10ViewController: UIViewController {

    //MARK: - OUTLET
    
    @IBOutlet weak var lblE10: UILabel!
    @IBOutlet weak var lblTitleE10: UILabel!
    @IBOutlet weak var txtHoraEntrada: UITextField!
    @IBOutlet weak var txtHoraSalida: UITextField!
    @IBOutlet weak var btnCobrar: UIButton!
    @IBOutlet weak var lblPago: UILabel!
    
    //MARK: - VARIABLES
    
    var horaEntada: Int = 0
    var horaSalida: Int = 0
    let tarifaPorHora: Int = 1000
    let tarifaPorHoraExtra: Int = 600
    
    //MARK: CYCLE - LIFE
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK: - FUNCTIONS
    
    func saveValuesE10(){
        self.horaEntada = Int(txtHoraEntrada.text ?? "0") ?? 0
        self.horaSalida = Int(txtHoraSalida.text ?? "0") ?? 0
    }
    
    
    
    func cobroPorHora(HE: Int, HS: Int){
        var horaEstadia = HS - HE
        let horaFr = horaEstadia - HS
        if horaEstadia <= 1 {
            self.lblPago.text = "Monto a pagar \(horaEstadia * tarifaPorHora)"
        }else if horaEstadia >= 1 {
            self.lblPago.text = "Monto a pagar \(horaEstadia * tarifaPorHora)"
        }
    }
    
    
    
    //MARK: - ACTIONS
    
    
    @IBAction func btnCobrarEstadia(_ sender: Any) {
        saveValuesE10()
        cobroPorHora(HE: horaEntada, HS: horaSalida)
    }
    
    
    
    //MARK: - NAVIGATIONS
    

}
