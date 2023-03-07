//
//  QuinceExViewController.swift
//  AppAlgoritmos
//
//  Created by Sem on 06/03/23.
//

import UIKit

class QuinceExViewController : UIViewController {
    
    //MARK: - OUTLETS
    
    
    //MARK: - VARIABLES
    
    
    //MARK: - LIFE · CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - FUNCTIONS
    
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
        
    print("el numero de dias \(days) equivale a \(anios) años,\(meses) meses,\(semanas) semanas,\(dias) dias")

    }
    //MARK: - ACTIONS
    
    //MARK: - NAVIGATION
    
}
