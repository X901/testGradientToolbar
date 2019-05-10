////
//ViewController.swift
//testGradientToolbar
//
//Created by Basel Baragabah on 10/05/2019.
//Copyright © 2019 Basel Baragabah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testTextview: UITextField!
    var gradientLayer: CAGradientLayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
setUpToolBar()
        
    }
    
    func setUpToolBar(){
        let toolbar = UIToolbar(frame:CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50))
        toolbar.barStyle = .default
        
        //get Gradient colors
        let gradient = createGradientLayer(view: toolbar)
        
        //change toolbar Background to Gradient colors
        toolbar.layer.addSublayer(gradient)
        
        toolbar.items = [
            UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancel)),
            UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil),
            UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(done))]
        
        //change the buttons colors of ToolBar
        toolbar.tintColor = .white
        toolbar.sizeToFit()
        testTextview.inputAccessoryView = toolbar

    }
    
    func createGradientLayer(view:UIToolbar) -> CAGradientLayer {
        gradientLayer = CAGradientLayer()

    
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)

        gradientLayer.frame = view.bounds
        
             let blue = UIColor(red:0.16, green:0.69, blue:0.82, alpha:1.0).cgColor
             let darkBlue = UIColor(red:0.13, green:0.25, blue:0.53, alpha:1.0).cgColor
             let purple = UIColor(red:0.67, green:0.13, blue:0.48, alpha:1.0).cgColor
        

        gradientLayer.colors = [blue, darkBlue , purple]
        
        return gradientLayer
    }
    
    @objc func cancel() {
    }
    @objc func done() {
    }



}

