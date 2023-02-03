//  ViewController.swift
//  AppAlgoritmos
//  Created by Moises Abraham Vazquez Perez on 25/01/23.

import UIKit

class ViewController: UIViewController {
    //MARK: - OUTLETS
    
    
    //MARK: - VARIABLES
    

    //MARK: - LIFE · CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: - FUNCTIONS
    
    
    //MARK: - ACTIONS
    @IBAction func goToFirst(_ sender: Any) {
        let vc = EjercicioUnoViewController(nibName: "EjercicioUnoViewController", bundle: .main)
        self.present(vc, animated: true)
    }
    
    @IBAction func goToSecond(_ sender: Any) {
        let vts = EjercicioDosViewController(nibName: "EjercicioDosViewController", bundle: .main)
        self.present(vts, animated: true)
    }
    
    @IBAction func goToThird(_ sender: Any) {
        let vtth = EjercicioTresViewController(nibName: "EjercicioTresViewController", bundle: .main)
        self.present(vtth, animated: true)
    
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    //MARK: - NAVIGATION
    
    
}

