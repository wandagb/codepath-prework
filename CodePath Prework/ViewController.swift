//
//  ViewController.swift
//  CodePath Prework
//
//  Created by Wanda B on 1/6/24.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func changeBackground(_ sender: NSButton) {
        let randomColor = changeColor()
        view.window?.backgroundColor = randomColor
    }
    
    func changeColor() -> NSColor{
        
        let red = CGFloat.random(in:0...1)
        let green = CGFloat.random(in:0...1)
        let blue = CGFloat.random(in:0...1)
        
        return NSColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    
}

