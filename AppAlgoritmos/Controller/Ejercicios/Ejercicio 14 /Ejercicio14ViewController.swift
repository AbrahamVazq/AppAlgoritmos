
import UIKit

class Ejercicio14ViewController: UIViewController {
    
    //MARK: - OUTLET
    
    
    
    @IBOutlet weak var lblE14: UILabel!
    @IBOutlet weak var lblTitleE14: UILabel!
    @IBOutlet weak var btnCarne: UIButton!
    @IBOutlet weak var btnPan: UIButton!
    @IBOutlet weak var btnLeche: UIButton!
    @IBOutlet weak var btnCobrar: UIButton!
    @IBOutlet weak var lblSubtotal: UILabel!
    @IBOutlet weak var lblIva: UILabel!
    @IBOutlet weak var lblTotal: UILabel!
    

    
    
    //MARK: - VARIABLES

    var subTotal: Double = 0
    var total: Double = 0
    var codigoProducto: String = ""
    var precioProducto: Int = 0
    
    
    //MARK: CYCLE - LIFE

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: - FUNCTIONS



    
    enum productos {
        case leche
        case pan
        case carne
    }



    func cobrar (producto : productos ){
        switch producto {
        case .leche:
            precioProducto = 26
        case .pan:
            precioProducto = 34
        case .carne:
            precioProducto = 60
        }

        subTotal = Double(precioProducto)
        let strSubtotal = identifircarCentavos(with: subTotal)
        self.lblSubtotal.text = "El precio del producto es $\(identifircarCentavos(with: subTotal))"
        var SubtotalConIva:Double = subTotal * 0.15
        self.lblIva.text = "IVA del producto $\(identifircarCentavos(with: SubtotalConIva))"
        total = (subTotal + SubtotalConIva) + total
        self.lblTotal.text = "El total a pagar es $\(identifircarCentavos(with: total))"
    }
    
    
    
    func identifircarCentavos(with: Double)-> String {
        return   String(format: "%.2f", with)
    }

    
    
    //MARK: - ACTIONS

    
    @IBAction func btnElegirCarne(_ sender: Any) {
        cobrar(producto: productos.carne)
    }
    
    
    @IBAction func btnElegirPan(_ sender: Any) {
        cobrar(producto: productos.pan)
    }
    
    
    @IBAction func btnElegirLeche(_ sender: Any) {
        cobrar(producto: productos.leche)
    }
    
    
    
    //MARK: - NAVIGATIONS



}
