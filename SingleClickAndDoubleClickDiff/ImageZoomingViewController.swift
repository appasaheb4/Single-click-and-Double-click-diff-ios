//
//  ImageZoomingViewController.swift
//  SingleClickAndDoubleClickDiff
//
//  Created by developer on 8/15/18.
//  Copyright © 2018 developer. All rights reserved.
//

import UIKit
import ImageScrollView

class ImageZoomingViewController: UIViewController {

    @IBOutlet weak var imgRef: ImageScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let singleTap = UITapGestureRecognizer(target: self, action:#selector(self.singleTapAction))
        singleTap.numberOfTapsRequired = 1
        imgRef.addGestureRecognizer(singleTap)
        let doubleTap = UITapGestureRecognizer(target: self, action:#selector(self.doubleTapAction))
        doubleTap.numberOfTapsRequired = 2
        imgRef.addGestureRecognizer(doubleTap)
        
        singleTap.require(toFail: doubleTap)
     
        imgRef.imageContentMode = .aspectFit
        imgRef.initialOffset = .center
        imgRef.display(image: #imageLiteral(resourceName: "download"))
    }
    
    @objc func singleTapAction(){
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func doubleTapAction(){
        print("double click")
    }

   

}
