//
//  CrayViewController.swift
//  Aula04
//
//  Created by Usuário Convidado on 22/05/18.
//  Copyright © 2018 FIAP. All rights reserved.
//

import UIKit

class CrayViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }
    
    // QUando tela aparece esconde navigation view controller
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //Escondendo navigation bar
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    // Quando vai desaparecer mostra a navigation view controller
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
        
    }
    
    @IBAction func gotoFirstVC(_ sender: Any) {
        //LEva para a view controller raiz da navigation
        //UnWindSegue -> tecnica usada para criar  uma seque para voltar
        navigationController?.popToRootViewController(animated: true)
        
    }
}
