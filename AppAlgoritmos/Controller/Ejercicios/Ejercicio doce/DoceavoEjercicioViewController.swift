//
//  DoceavoEjercicioViewController.swift
//  AppAlgoritmos
//
//  Created by Sem on 13/02/23.
//

import UIKit

class DoceavoEjercicioViewController : UIViewController {
    
    //MARK: - OUTLETS
    
    @IBOutlet weak var txfNotas: UITextField!
    @IBOutlet weak var lblPromedio: UILabel!
    
    
    //MARK: - VARIABLES
    var notasList: [Int] = []
    
    
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
    
    func reinicio(){
        txfNotas.text = ""
        
    }
   
    
    func sumaArreglo(numeros notas:[Int]) -> Double{
        var suma:Int = 0
        for number in notas {
            suma += number
        }
        let promedio = Double(suma)/Double(notas.count)
        print("\(promedio)")
        return Double(promedio)
    }
    
    
    //MARK: - ACTIONS
    
    
    @IBAction func btnAgregar(_ sender: Any) {
    
        
    }
    
    @IBAction func btnCalcular(_ sender: Any) {
    }
    
    //MARK: - NAVIGATION
    
}


/* @IBOutlet weak var inputEntered: UITextField!
 var shoppingList: [String] = [] // our holder of strings

 @IBAction func buttonAddToList(_ sender: UIButton) {

     if let item = inputEntered.text, item.isEmpty == false { // need to make sure we have something here
         shoppingList.append(item) // store it in our data holder
     }
     inputEntered.text = nil // clean the textfield input

     for product in shoppingList {
         print(product) // prints the items currently in the list
     }
 }
 */

