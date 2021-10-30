//
//  ViewController.swift
//  hello-triangle
//
//  Created by enarche on 2021/10/30.
//

import UIKit
import Metal
import QuartzCore

class ViewController: UIViewController {
    
    var device:MTLDevice!
    var metalLayer:CAMetalLayer!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        device = MTLCreateSystemDefaultDevice()
        metalLayer = CAMetalLayer()
        metalLayer.device = device
        metalLayer.pixelFormat = .bgra8Unorm
        metalLayer.framebufferOnly = true
        metalLayer.frame = view.layer.frame
        view.layer.addSublayer(metalLayer)
    }


}

