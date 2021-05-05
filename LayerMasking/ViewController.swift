//
//  ViewController.swift
//  LayerMasking
//
//  Created by Brite Solutions on 7/21/20.
//  Copyright © 2020 Brite Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var whiteView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeMaskView()
        
        yellowView.mask = whiteView
    }

    func makeMaskView() {
        let redView = UIView(frame: CGRect(x: 50, y: 50, width: 128, height: 128))
        redView.backgroundColor = .red
        view.addSubview(redView)
        
        let maskView = UIView(frame: CGRect(x: 64, y: 0, width: 128, height: 128))
        maskView.backgroundColor = .blue
        maskView.layer.cornerRadius = 64
        redView.mask = maskView
    }
}

