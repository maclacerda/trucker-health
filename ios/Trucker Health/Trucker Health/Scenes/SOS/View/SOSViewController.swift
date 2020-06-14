//
//  SOSViewController.swift
//  Trucker Health
//
//  Created by Marcos Lacerda on 14/06/20.
//  Copyright © 2020 CCR. All rights reserved.
//

import UIKit

class SOSViewController: BaseViewController {
    
    @IBOutlet private weak var countDownLabel: UILabel!
    
    // MARK: - Private properties
    
    private var countDownTimer = 5
    private var timer: Timer?

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    // MARK: - Private methods
    
    private func setup() {
        changeNavigationbarVisibility(false)
        statusBarHidden = false
        statusBarStyle = .lightContent
        
        applyNavigationBarStyle()
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDownAction), userInfo: nil, repeats: true)
    }
    
    // MARK: - Actions
    
    @IBAction private func goButtonAction() {
        timer?.invalidate()
        countDownTimer = 5
        countDownLabel.text = String(format: "%i", countDownTimer)
        
        self.tabBarController?.selectedIndex = 0
    }
    
    @objc private func countDownAction() {
        if countDownTimer > 0 {
            countDownTimer -= 1
            countDownLabel.text = String(format: "%i", countDownTimer)
        } else {
            timer?.invalidate()
        }
    }

}
