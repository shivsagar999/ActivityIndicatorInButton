//
//  ViewController.swift
//  activityIndicatorInsideButton
//
//  Created by MEP LAB 01 on 24/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var shareButton: UIButton!
    let activityIndicator = UIActivityIndicatorView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        activityIndicator.hidesWhenStopped = true
        activityIndicator.color = .lightGray
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
    }
    
    @IBAction func sharePressed(_ sender: UIButton) {
        //Empty spaces before share is to accomodate activity indicator
        sender.setTitle("    Share", for: .normal)
        sender.addSubview(activityIndicator)
        let constraintCentreX = NSLayoutConstraint(item: sender, attribute: .centerY, relatedBy: .equal, toItem: activityIndicator, attribute: .centerY, multiplier: 1, constant: 0)
        let constraint = NSLayoutConstraint(item: sender, attribute: .leading, relatedBy: .equal, toItem: activityIndicator, attribute: .leading, multiplier: 1, constant: -5)
        sender.addConstraint(constraintCentreX)
        sender.addConstraint(constraint)
        activityIndicator.startAnimating()
    }
    


}

