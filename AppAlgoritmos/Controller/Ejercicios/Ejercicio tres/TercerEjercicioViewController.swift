//
//  TercerEjercicioViewController.swift
//  AppAlgoritmos
//
//  Created by Sem on 30/01/23.
//

import UIKit

class TercerEjercicioViewController : UIViewController {
    
    //MARK: - OUTLETS
    
    
    //MARK: - VARIABLES
    var num:Int  = 0
    
    //MARK: - LIFE · CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - FUNCTIONS
    func suma(val1: Int, val2: Int ) -> Int{
        let suma = val1 + val2
            return suma
            
        }

        func sumota(veces vec:Int){
            for i in 1...vec{
                num = suma(val1: i, val2: num)
                print("La suma es igual a \(num)")
            }
        }
         
  sumota(veces: 10)
    
    //MARK: - ACTIONS
    
    //MARK: - NAVIGATION
    
}
