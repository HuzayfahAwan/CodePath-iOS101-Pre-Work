//
//  ViewController.swift
//  Pre-Work IOS101
//
//  Created by Huzayfah Awan on 6/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myNameLabel: UILabel!
    @IBOutlet weak var myCollegeLabel: UILabel!
    @IBOutlet weak var myJobAspirationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    
    @IBAction func changeLabelColors(_ sender: UIButton) {
        let color1 = changeColor()
        let color2 = changeColor()
        let color3 = changeColor()
        myNameLabel.textColor = color1
        myCollegeLabel.textColor = color2
        myJobAspirationLabel.textColor = color3
    }
    
    func changeColor() -> UIColor {
           let red = CGFloat.random(in: 0...1)
           let green = CGFloat.random(in: 0...1)
           let blue = CGFloat.random(in: 0...1)
           return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }

}

