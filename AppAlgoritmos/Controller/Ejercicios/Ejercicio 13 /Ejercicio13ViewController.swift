

import UIKit

class Ejercicio13ViewController: UIViewController {
    
    //MARK: - OUTLET

    @IBOutlet weak var lblE13: UILabel!
    @IBOutlet weak var lblTitleE13: UILabel!
    @IBOutlet weak var txtIngreseHoras: UITextField!
    @IBOutlet weak var btnCalcularNomina: UIButton!
    @IBOutlet weak var lblResultadoE13: UILabel!
    @IBOutlet weak var lblNoTrabajador: UILabel!
    @IBOutlet weak var lblSalario: UILabel!
    
    
    //MARK: - VARIABLES

    var horasTrabajdas: Int = 0
    var numeroObreros: Int = 3
    var totalNomina: Int = 0
    
    
    //MARK: CYCLE - LIFE
    override func viewDidLoad() {
        super.viewDidLoad()
       calcularNomina()
    }
    
    
    //MARK: - FUNCTIONS

    func saveValues(){
        self.horasTrabajdas = Int(txtIngreseHoras.text ?? "0") ?? 0
    }
    
    
    func calcularNomina(){
        while numeroObreros>0 {
            txtIngreseHoras.becomeFirstResponder()
            
        let salario = horasTrabajdas * 30
            self.lblNoTrabajador.text = "Trabajador No. \(numeroObreros)"
            self.lblSalario.text = "El salario para \(numeroObreros) es \(salario)"
        totalNomina = totalNomina + salario
        numeroObreros -= 1
            self.lblResultadoE13.text = "El total de la nomina es $ \(totalNomina)."
            txtIngreseHoras.resignFirstResponder()
        }
    }
    
    
   
    
    
    
    //MARK: - ACTIONS
    @IBAction func btnCalcuNomina(_ sender: Any) {
        saveValues()
        calcularNomina()
    }
    
    
    


    //MARK: - NAVIGATIONS


}


extension Ejercicio13ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       
        return true
    }
}
