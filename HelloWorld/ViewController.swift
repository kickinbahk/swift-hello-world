//
//  ViewController.swift
//  HelloWorld
//
//  Created by Josiah Mory on 9/26/16.
//  Copyright © 2016 kickinbahk Productions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        updateButtonColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func composeMessage(userMessage: String) {
        let alertController = UIAlertController(title: "Welcome to my First App", message: "\(userMessage)", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func showMessage() {
        composeMessage(userMessage: "Hi Everyone")
    }

    @IBOutlet weak var helloWorldButton: UIButton!

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!

    @IBAction func sliderValueChanged() {
        updateButtonColor()
    }

    func updateButtonColor() {
        helloWorldButton.backgroundColor = UIColor.init(colorLiteralRed: redSlider.value, green: greenSlider.value, blue: blueSlider.value, alpha: 1)
    }

}

