//
//  ViewController.swift
//  TrafficLight
//
//  Created by Максим Иванов on 23.10.2020.
//

import UIKit

class ViewController: UIViewController {
    
    var currentLightColor:Int = 0
        
        override var prefersStatusBarHidden: Bool {
            return true
        }

        override func viewDidLoad() {
            super.viewDidLoad()
            updateView()
        }

        fileprivate func updateView() {
            
            switch currentLightColor {

                case 0:
                    view.backgroundColor = .red
                case 1:
                    view.backgroundColor = .yellow
                case 2:
                    view.backgroundColor = .green
                default:
                    view.backgroundColor = .red
                    
            }

        }
        
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            
            currentLightColor = currentLightColor < 2 ? currentLightColor + 1 : 0
            updateView()
            
        }


}

