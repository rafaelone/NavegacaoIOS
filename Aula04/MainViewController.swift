//
//  MainViewController.swift
//  Aula04
//
//  Created by Usuário Convidado on 22/05/18.
//  Copyright © 2018 FIAP. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    
    @IBOutlet weak var lbMain: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // IBOutlat -> representa uma ligacao ao elemento visual e seu codigo
        // IOAction -> referencia de um elemento tocavel com o metodo q ele executa ao toca-lo
        lbMain.text = "Quem nāo assobiar, se dá mal"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showXIB(_ sender: UIButton) {
        let newVC = NewViewController(nibName: nil, bundle: nil)
        //Via navigation
        //navigationController?.show(newVC, sender: nil)
        
        //Via Modalmente
        present(newVC, animated: true, completion: nil)
    }
    
    @IBAction func goBack(_ sender: UIButton) {
        //Dismiss elimina a tela
        //touch up insede -> tela fica ativa ate tirar o dedo de cima do botao
//       -> usado para fechar tela modalmente dismiss(animated: true, completion: nil)
        
        //VOltando atraves de navigation controller
        navigationController?.popViewController(animated: true)
    }


}
