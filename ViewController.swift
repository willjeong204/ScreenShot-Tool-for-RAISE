//
//  ViewController.swift
//  ScreenShotTool
//
//  Created by Will Jeong on 9/21/17.
//  Copyright © 2017 Will Jeong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    weak var L: UITouch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func screenShot(_ sender: Any) {
        UIGraphicsBeginImageContextWithOptions(CGSizeMake(self.frame.size.width*0.99, self.frame.size.height*0.70), false, 0)
        var image:UIImage = UIGraphicsGetImageFromCurrentImageContext()!;
        self.view?.drawViewHierarchyInRect(CGRectMake(-01, -01, self.frame.size.width, self.frame.size.height), afterScreenUpdates: true)
        var screenShot  = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
    }

}

