//
//  ViewController.swift
//  demo-accelerometer
//
//  Created by Tianchu Xie on 2/25/22.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    @IBOutlet var label_y: UILabel!
    @IBOutlet var label_z: UILabel!
    let moveMan = CMMotionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        moveMan.startAccelerometerUpdates()
        moveMan.accelerometerUpdateInterval = 1
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true){ _ in
            if let data = self.moveMan.accelerometerData{
                self.label.text = String(data.acceleration.x)
                self.label_y.text = String(data.acceleration.y)
                self.label_z.text = String(data.acceleration.z)
            }
            
        }
    }


}

