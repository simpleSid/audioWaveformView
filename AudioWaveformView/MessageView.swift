//
//  messageView.swift
//  AudioWaveformView
//
//  Created by Денис Сидоренко on 09/06/2019.
//  Copyright © 2019 Денис Сидоренко. All rights reserved.
//

import UIKit

class MessageView: UIView {
    
    override func draw(_ rect: CGRect) {
    }
    
    let playButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "play"), for: .normal)
        return button
    }()
    
    let audioWaveformView: AudioFormView = {
        let audioView = AudioFormView()
        audioView.backgroundColor = .red
        audioView.translatesAutoresizingMaskIntoConstraints = false
        return audioView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(playButton)
        self.addSubview(audioWaveformView)
        
        playButtonConstraints()
        audioWaveformViewConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func playButtonConstraints() {
        playButton.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        playButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16).isActive = true
        playButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        playButton.widthAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    func audioWaveformViewConstraints() {
        audioWaveformView.leftAnchor.constraint(equalTo: playButton.rightAnchor, constant: 8).isActive = true
        audioWaveformView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16).isActive = true
        audioWaveformView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        audioWaveformView.heightAnchor.constraint(equalTo: playButton.widthAnchor).isActive = true
    }
    
}
