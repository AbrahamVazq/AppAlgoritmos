//
//  Ejercicio7ViewController.swift
//  AppAlgoritmos
//
//  Created by LUIS GONZALEZ on 03/02/23.
//

import UIKit

class Ejercicio7ViewController: UIViewController {
    //MARK: - OUTLETS

    @IBOutlet weak var lblE7: UILabel!
    @IBOutlet weak var lblbTitleE7: UILabel!
    @IBOutlet weak var txtIngreseNota: UITextField!
    @IBOutlet weak var btnValidarNota: UIButton!
    @IBOutlet weak var lblResultadoE7: UILabel!
    
    
    
    //MARK: - VARIABLES

    var nota: Int = 0
    var NumerosFin:[Int] = [1,2,3,4,5,6,7,8,9]
    
    
    
    //MARK: - LIFE · CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: - FUNCTIONS

    func saveValuesE7(){
        self.nota = Int(txtIngreseNota.text ?? "0") ?? 0
    }
    
    func findNote(on arrNotes:[Int], withNote note:Int ) -> Bool {
        for indice in arrNotes{
            if indice == note{
                return true
            }else {
                
            }
        }
        return false
    }
            
            
            func validarNota(notaIngresada: Int){
                if notaIngresada == 20 || notaIngresada == 19{
                    self.lblResultadoE7.text = "La nota es A"
                }else if notaIngresada == 18 || notaIngresada == 17 || notaIngresada == 16{
                    self.lblResultadoE7.text = "La nota es B"
                }else if notaIngresada == 15 || notaIngresada == 14 || notaIngresada == 13{
                    self.lblResultadoE7.text = "La nota es C"
                }else if notaIngresada == 12 || notaIngresada == 11 || notaIngresada == 10{
                    self.lblResultadoE7.text = "La nota es D"
                }else if findNote(on: NumerosFin, withNote: notaIngresada){
                    self.lblResultadoE7.text = "La nota es E"
                }
            }
            
            
            
            
            //MARK: - ACTIONS
            
            
            @IBAction func btnValidarResultado(_ sender: Any) {
                saveValuesE7()
                validarNota(notaIngresada: nota)
            }
            
            
            
            //MARK: - NAVIGATION
            
            
            
            
        }
    
