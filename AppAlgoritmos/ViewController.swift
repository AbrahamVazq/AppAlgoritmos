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
    
    
    @IBAction func goToFourth(_ sender: Any) {
        let vtf = Ejercicio4ViewController(nibName: "Ejercicio4ViewController", bundle: .main)
        self.present(vtf, animated: true)
    }
    
    @IBAction func goToFifth(_ sender: Any) {
        let vtfif = Ejercicio5ViewController(nibName: "Ejercicio5ViewController", bundle: .main)
        self.present(vtfif, animated: true)
    }
    
    
    @IBAction func goToSixt(_ sender: Any) {
        let vts = Ejercicio6ViewController(nibName: "Ejercicio6ViewController", bundle: .main)
        self.present(vts, animated: true)
    }
    
    @IBAction func goToSeventh(_ sender: Any) {
        let vtsev = Ejercicio7ViewController(nibName: "Ejercicio7ViewController", bundle: .main)
        self.present(vtsev, animated: true)
    }
    @IBAction func goToEighth(_ sender: Any) {
        let vteig = Ejercicio8ViewController(nibName: "Ejercicio8ViewController", bundle: .main)
        self.present(vteig, animated: true)
    }
    @IBAction func goToNineth(_ sender: Any) {
        let vtnin = Ejercicio9ViewController(nibName: "Ejercicio9ViewController", bundle: .main)
        self.present(vtnin, animated: true)
    }
    @IBAction func goToTenth(_ sender: Any) {
        let vtten = Ejercicio10ViewController(nibName: "Ejercicio10ViewController", bundle: .main)
        self.present(vtten, animated: true)
    }
    @IBAction func goToEleventh(_ sender: Any) {
        let vtel = Ejercicio11ViewController(nibName: "Ejercicio11ViewController", bundle: .main)
        self.present(vtel, animated: true)
    }
    @IBAction func goToTwelfth(_ sender: Any) {
        let vttw = Ejercicio12ViewController(nibName: "Ejercicio12ViewController", bundle: .main)
        self.present(vttw, animated: true)
    }
    
    
    
    
    
    
    
    
    //MARK: - NAVIGATION
    
    
}

