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
        let ed = EjercicioDosViewController(nibName: "EjercicioDosViewController", bundle: .main)
        self.present(ed, animated: true)
    }
    
    @IBAction func goToThree(_ sender: Any) {
        let ed = TercerEjercicioViewController(nibName: "TercerEjercicioViewController", bundle: .main)
        self.present(ed, animated: true)
    }
    
    
    @IBAction func goToFour(_ sender: Any) {
        let ed = CuartoEjercicioViewController(nibName: "CuartoEjercicioViewController", bundle: .main)
        self.present(ed, animated: true)
    }
    
    
    @IBAction func goToFive(_ sender: Any) {
        let ed = QuintoEjeViewController(nibName: "QuintoEjeViewController", bundle: .main)
        self.present(ed, animated: true)
    }
    
    
    @IBAction func goToSix(_ sender: Any) {
        let ed = SextoEjercicioViewController(nibName: "SextoEjercicioViewController", bundle: .main)
        self.present(ed, animated: true)
    }
    
    @IBAction func goToSeven(_ sender: Any) {
        let ed = SeptimoEjecicioViewController(nibName: "SeptimoEjecicioViewController", bundle: .main)
        self.present(ed, animated: true)
    }
    //MARK: - NAVIGATION
    
    
}

