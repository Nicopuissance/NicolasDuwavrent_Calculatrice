//
//  ViewController.swift
//  NicolasDuwavrent_Calculatrice
//
//  Created by Nicolas Duwavrent on 26/03/2019.
//  Copyright © 2019 ND. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var etape=1
    var v1 = 0
    var v2 = 0
    var operande = ""
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    @IBOutlet weak var btn0: UIButton!
    @IBOutlet weak var negative: UIButton!
    @IBOutlet weak var point: UIButton!
    @IBOutlet weak var plus: UIButton!
    @IBOutlet weak var less: UIButton!
    @IBOutlet weak var multi: UIButton!
    @IBOutlet weak var divide: UIButton!
    @IBOutlet weak var btnEquals: UIButton!
    @IBOutlet weak var btnReset: UIButton!
    
    @IBOutlet weak var lblCalc: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let buttons:[UIButton]=[btn1,btn2,btn3,btn4,btn5,btn6,btn7,btn8,btn9,btn0,negative,point,plus,less,multi,divide,btnReset,btnEquals]
        for button in buttons{
            button.layer.cornerRadius=10
            lblCalc.layer.cornerRadius=10
        }
    }
    
    @IBAction func actionBtnClick(_ sender: UIButton) {
        if let value = sender.titleLabel?.text{
            operande=value
            etape=2
        }
    }
    
    @IBAction func valueBtnClick(_ sender: UIButton) {
        if etape==1{
            v1=sender.tag
            lblCalc.text=String(v1)
            print(v1)
        }
        if etape==2{
            v2=sender.tag
            lblCalc.text=String(v2)
            print(v2)
        }
    }
    
    @IBAction func equalsBtnClick(_ sender: UIButton) {
        if etape == 2 {
            if v2 != 0{
                switch operande {
                case "+":
                    lblCalc.text=String(v1+v2);
                case "-":
                    lblCalc.text=String(v1-v2);
                case "÷":
                    lblCalc.text=String(Double(v1)/Double(v2));
                case "x":
                    lblCalc.text=String(v1*v2);
                default:break;
                }
            }
        }
    }
    @IBAction func resetBtnClick(_ sender: UIButton) {
        lblCalc.text="0"
        v1=0
        v2=0
        operande=""
        etape=1
    }
}

