//
//  MiddleViewController.swift
//  OrderOfEventsLab
//
//  Created by kole ervine on 2/6/23.
//

import UIKit

class MiddleViewController: UIViewController {

    @IBOutlet var middleViewLabel: UILabel!
    var eventNumber: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("1")
        addEvent(from: "viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("2")
        addEvent(from: "viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("3")
        addEvent(from: "viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("4")
        addEvent(from: "viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("5")
        addEvent(from: "viewDidDisappear")
    }
    
    func addEvent(from: String) {
        if let existingText = middleViewLabel.text {
            middleViewLabel.text = "\(existingText)\nEvent Number \(eventNumber) was \(from)"
            eventNumber += 1
        }
    }
}
