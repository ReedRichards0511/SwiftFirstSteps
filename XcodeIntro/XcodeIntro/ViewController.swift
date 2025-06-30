//
//  ViewController.swift
//  XcodeIntro
//
//  Created by Mauricio Matango on 27/6/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        etiquetaPrueba.text = "Texto desde el codigo"
    }


    @IBOutlet weak var etiquetaPrueba: UILabel!
    
    @IBAction func buttonOnClick(_ sender: UIButton) {
        print("onClick")
    }
}

