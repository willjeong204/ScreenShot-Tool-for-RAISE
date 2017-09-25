//
//  ViewController.swift
//  ScreenShotTool
//
//  Created by Will Jeong on 9/21/17.
//  Copyright © 2017 Will Jeong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var touch: UITouch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func screenShot(_ sender: Any) {
        UIGraphicsBeginImageContext(self.view.frame.size)
        self.view.layer.render(in: UIGraphicsGetCurrentContext()!)
        var image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        UIImageWriteToSavedPhotosAlbum(image!, nil, nil, nil)
    }

}

