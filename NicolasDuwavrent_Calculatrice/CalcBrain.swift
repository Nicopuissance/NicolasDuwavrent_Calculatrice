//
//  CalcBrain.swift
//  NicolasDuwavrent_Calculatrice
//
//  Created by Nicolas Duwavrent on 26/03/2019.
//  Copyright © 2019 ND. All rights reserved.
//

import Foundation

class CalcBrain {
    
    enum Operators:String {
        case plus="+",minus="-",multiply="x",divide="÷"
    }
    
    var leftOp:Double?
    var rightOp:Double?
    var result:Double?
    var calcOperator:Operators?
    
    init() {
    }
    
    func opResult() -> Double? {
        return 0.2
    }
    
    func setOperand(value:Double){
        if calcOperator != nil{
            leftOp = value
        }
        else{
            rightOp = value
        }
    }
    
    func setOperande(value:String) {
        if leftOp != nil {
            switch value {
            case "+":
                calc
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
