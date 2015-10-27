//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Rafael Gil Pastor on 25/10/15.
//  Copyright © 2015 Rafael Gil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hamburguesaLabel: UILabel!
    @IBOutlet weak var paisLabel: UILabel!
    @IBOutlet weak var quieroUnaHamburguesaButton: UIButton!
    
    var paises: ColeccionDePaises = ColeccionDePaises()
    var hamburguesas: ColeccionDeHamburguesas = ColeccionDeHamburguesas()
    var colores: ColeccionColores = ColeccionColores()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //poner bordes redondeados al botón y las etiquetas
        self.quieroUnaHamburguesaButton.layer.cornerRadius = 8
        self.hamburguesaLabel.clipsToBounds = true
        self.hamburguesaLabel.layer.cornerRadius = 8
        self.paisLabel.clipsToBounds = true
        self.paisLabel.layer.cornerRadius = 8
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func quieroUnaHamburguesaAction(sender: AnyObject) {
        
        //obtenemos un tipo de hamburguesa de forma aleatoria y lo mostramos en la etiqueta de hamburguesas
        self.hamburguesaLabel.text = self.hamburguesas.obtenHamburguesa()

        //obtenemos un color aleatorio para el color de la hamburguesa
        self.hamburguesaLabel.textColor = colores.obtenColor()

        //obtenemos un país de forma aleatoria y lo mostramos en la etiqueta de países
        self.paisLabel.text = self.paises.obtenPais()

        //obtenemos un color aleatorio para el color del país
        self.paisLabel.textColor = colores.obtenColor()
        
        //obtenemos un color aleatorio para el color del texto del botón
        self.quieroUnaHamburguesaButton.setTitleColor(colores.obtenColor(), forState: UIControlState.Normal)
        
        //obtenemos un color aleatorio para el fondo de la vista
        self.view.backgroundColor = colores.obtenColor()
    }
}

