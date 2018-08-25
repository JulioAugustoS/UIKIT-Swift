//
//  ViewController.swift
//  UIKIT Swift
//
//  Created by Usuário Convidado on 18/08/2018.
//  Copyright © 2018 Julio Augusto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var linguagem: UISegmentedControl!
    @IBOutlet weak var nome: UITextField!
    @IBOutlet weak var nota: UIStepper!
    @IBOutlet weak var versao: UISlider!
    @IBOutlet weak var gosta: UISwitch!
    @IBOutlet weak var liguagemEscolhidaReturn: UILabel!
    
    @IBOutlet weak var notaResult: UILabel!
    @IBOutlet weak var versaoResult: UILabel!
    
    @IBAction func linguagemChanged(_ sender: Any) {
        liguagemEscolhidaReturn.text = "\(linguagem.titleForSegment(at: linguagem.selectedSegmentIndex)!)"
    }

    @IBAction func chageNota(_ sender: Any) {
        notaResult.text = "\(Int(nota.value))"
    }
    
    @IBAction func chageVersao(_ sender: Any) {
        versaoResult.text = "\(Int(versao.value))"
    }
    
    // Salvar
    @IBAction func salvar(_ sender: Any) {
        var msg:String
        var tipo:String
        
        if linguagem.selectedSegmentIndex >= 0 {
            tipo = linguagem.titleForSegment(at: linguagem.selectedSegmentIndex)!
            msg = "Pesquisa Salva com Sucesso!"
        }else{
            tipo = ""
            msg = "Antes de salvar escolha o tipo de linguagem!"
        }
        
        let alerta = UIAlertController(
            title: "Atenção",
            message: msg,
            preferredStyle: UIAlertControllerStyle.alert)
        
        alerta.addAction(UIAlertAction(
            title: "OK",
            style: UIAlertActionStyle.default,
            handler: nil))
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        notaResult.text = "0"
        versaoResult.text = "1"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

