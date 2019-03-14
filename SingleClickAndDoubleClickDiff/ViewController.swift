//
//  ViewController.swift
//  SingleClickAndDoubleClickDiff
//
//  Created by developer on 8/15/18.
//  Copyright © 2018 developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func click_ImageZoomingVC(_ sender: Any) {
        let imageZoomingVC = self.storyboard?.instantiateViewController(withIdentifier: "ImageZoomingViewController") as! ImageZoomingViewController
        self.navigationController?.pushViewController(imageZoomingVC, animated: true)
    }
    
}

