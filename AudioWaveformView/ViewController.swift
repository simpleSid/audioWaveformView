//
//  ViewController.swift
//  AudioWaveformView
//
//  Created by Денис Сидоренко on 06/06/2019.
//  Copyright © 2019 Денис Сидоренко. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let messageView = MessageView(frame: CGRect(x: 0, y: 0, width: 300, height: 100))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(messageView)
        
        messageView.center = self.view.center
        messageView.backgroundColor = .green
    }


}

