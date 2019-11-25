//
//  ActivityView.swift
//  ActivityView
//
//  Created by Enrique Martínez Fernández on 3/5/18.
//  Copyright © 2018 Enrique Martínez Fernández. All rights reserved.
//

import Foundation
import UIKit


public class ActivityView {
    
    var containerView = UIView()
    var progressView = UIView()
    var activityIndicator = UIActivityIndicatorView()
    
    open class var shared: ActivityView {
        struct Static {
            static let instance: ActivityView = ActivityView()
        }
        return Static.instance
    }
    
    open func show() {
        let window = UIApplication.shared.keyWindow!
        containerView = UIView(frame: CGRect(x: window.frame.origin.x, y: window.frame.origin.y, width: window.frame.width, height: window.frame.height))
        
        containerView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.3)
        
        progressView.frame = CGRect(x: 0, y: 0, width: 80, height: 80)
        progressView.center =  containerView.center
        progressView.backgroundColor = UIColor(red: 68/255, green: 68/255, blue: 68/255, alpha: 0.7)
        progressView.clipsToBounds = true
        progressView.layer.cornerRadius = 10
        
        activityIndicator.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        activityIndicator.style = .whiteLarge
        activityIndicator.center = CGPoint(x: progressView.bounds.width / 2, y: progressView.bounds.height / 2)
        
        progressView.addSubview(activityIndicator)
        containerView.addSubview(progressView)
        window.addSubview(containerView)
        
        activityIndicator.startAnimating()
    }
    
    open func hide() {
        activityIndicator.stopAnimating()
        containerView.removeFromSuperview()
    }
}
