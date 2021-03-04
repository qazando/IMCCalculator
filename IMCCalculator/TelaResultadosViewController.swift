//
//  TelaResultadosViewController.swift
//  IMCCalculator
//
//  Created by Eduardo Finotti on 16/02/21.
//  Copyright © 2021 Eduardo Finotti. All rights reserved.
//

import UIKit

class TelaResultadosViewController: UIViewController {

    var valorImc : Float?
    var nomeCompleto: NSString?
    var idade : Float?
    
    @IBOutlet weak var txt_nome: UILabel!
    @IBOutlet weak var txt_idade: UILabel!
    @IBOutlet weak var txt_resultado: UILabel!
    
    override func viewDidLoad() {
       super.viewDidLoad()
    
       let sValorImc = NSString(format: "%.2f", valorImc!);
       let sIdade = NSString(format: "%.0f", idade!);
    
       self.txt_nome.text = "Olá \(nomeCompleto!)";
       self.txt_idade.text = "\(sIdade) anos";
       self.txt_resultado.text = "\(sValorImc)";
    }
    
    @IBAction func voltar(_ sender: Any) {
        self.dismiss(animated: true, completion: nil);
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
