//
//  ViewController.swift
//  Propinas
//
//  Created by Alumno on 30/08/21.
//  Copyright © 2021 Ruben Borbolla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtTotalCuenta: UITextField!
    @IBOutlet weak var sldPorcentajePropina: UISlider!
    @IBOutlet weak var lblPorcentaje: UILabel!
    @IBOutlet weak var lblPropina: UILabel!
    @IBOutlet weak var lblTotalYPropina: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doEditEndTotalCuenta(_ sender: Any) {
    }
    @IBAction func doChangePorcentajePropina(_ sender: Any) {
        lblPorcentaje.text = "\(String(Int(sldPorcentajePropina.value)))%"
        if txtTotalCuenta.text != nil && txtTotalCuenta.text != ""{
            let cuenta = Float(txtTotalCuenta.text!)!
            let porcentaje = Float(Int(sldPorcentajePropina.value))
            let propina = cuenta * (porcentaje/100.0)
            lblPropina.text = "$\(String(format:"%.2f", propina))"
            lblTotalYPropina.text = "$\(String(format:"%.2f", cuenta + propina))"
        }
        
    }
    
}

