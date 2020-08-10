//
//  ViewController.swift
//  tabela-dinamica-refeicoes
//
//  Created by Luis Cruz on 09/08/20.
//  Copyright © 2020 luiscruz. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    let refeicoes = ["Churros", "Macarrão", "Pizza"]

    override func viewDidLoad() {
        super.viewDidLoad()
        print("table view controller foi carregado")
    }
    
    // numero de linhas
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        let refeicao = refeicoes[indexPath.row]
        
        celula.textLabel?.text = refeicao
        
        return celula
    }


}

