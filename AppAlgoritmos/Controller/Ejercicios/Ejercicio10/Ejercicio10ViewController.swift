

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
    
    func validarCampos() -> Bool{
        if txtHoraEntrada.text == "" && txtHoraSalida.text == "" {
            self.lblPago.text = "Por favor ingrese ambos horarios"
            return false
        }else if txtHoraEntrada.text == "" || txtHoraSalida.text == "" {
            self.lblPago.text = "Por favor ingrese todos los datos"
            return false
        }else{
            return true
        }
    }
    
    func limiteDeCampos() -> Bool{
        if horaEntada > 2400 && horaSalida > 2400{
            self.lblPago.text = "Por favor ingrese un horario diferente"
            return false
        }
        return true
    }
    
    
    
    func cobroPorHora(HE: Int, HS: Int){
        let horaEstadia = HS - HE
        if horaEstadia <= 100 {
            self.lblPago.text = "Monto a pagar \(horaEstadia/100 * tarifaPorHora)"
        }else if horaEstadia % 100 == 0 {
            print("El residuo es cero")
            let sinPrimHora = horaEstadia - 100
            let horaFraccion = sinPrimHora / 100
            let horasTotales = horaFraccion * 600
            let cobroTotal = horasTotales + tarifaPorHora
            self.lblPago.text = "Monto a pagar \(cobroTotal)"
        }else if horaEstadia % 100 != 0 {
            let sinprimeraHora = horaEstadia - 100
            let horaFraccion = sinprimeraHora / 100
            let horasParciales = horaFraccion * 600
            let cobroTotal = (horasParciales + 600) + tarifaPorHora
            self.lblPago.text = "Monto a pagar \(cobroTotal)"
        }
    }
    
    
    
    //MARK: - ACTIONS
    
    
    @IBAction func btnCobrarEstadia(_ sender: Any) {
        if validarCampos(){
            saveValuesE10()
            if limiteDeCampos(){
                print("si paso")
                cobroPorHora(HE: horaEntada, HS: horaSalida)
            }
            
        }
        
    }
    
    
    
    //MARK: - NAVIGATIONS
    

}
