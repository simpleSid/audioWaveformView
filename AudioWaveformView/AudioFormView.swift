//
//  AudioWaveformView.swift
//  AudioWaveformView
//
//  Created by Денис Сидоренко on 06/06/2019.
//  Copyright © 2019 Денис Сидоренко. All rights reserved.
//

import UIKit


class AudioFormView: UIView {
    
    var peakHeight:CGFloat = 12
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
    }
}
