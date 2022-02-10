//
//  ViewController.swift
//  RealityTester
//
//  Created by Ahmed Mahmoud on 1/16/22.
//

import UIKit
import RealityKit
import ARKit

class ViewController: UIViewController {
     
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
        if #available(iOS 13.0, macOS 10.15, *) {

            let childVC = Sub()
            self.addChild(childVC)
            childVC.view.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(childVC.view)
            NSLayoutConstraint.activate([
                childVC.view.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
                childVC.view.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
                childVC.view.topAnchor.constraint(equalTo: self.view.topAnchor),
                childVC.view.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
            ])
            childVC.didMove(toParent: self)

        }


}

}



@available(iOS 13.0, macOS 10.15, *)
class Sub: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
        let assetsLoader = try! Turbah.loadScene() // if you can pass this line with ios 10 + to the print line then it worked =D
 
         print("assetsLoader",assetsLoader)
    }


}



