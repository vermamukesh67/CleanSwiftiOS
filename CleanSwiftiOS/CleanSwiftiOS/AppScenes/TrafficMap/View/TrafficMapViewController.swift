//
//  ViewController.swift
//  CleanSwiftiOS
//
//  Created by verma mukesh on 24/2/21.
//

import UIKit

class TrafficMapViewController: UIViewController, TrafficMapViewControllerProtocol {
    
    var presenter: TrafficMapPresenterProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.startProcessForShowingTrafficPin()
    }
}

extension TrafficMapViewController {
    func startProcessForShowingTrafficPin() {
        presenter?.displayTrafficsOnMap()
    }
    func showTrafficImagesPinNow() {
        print("task completed..")
    }
    
    func showError() {
        print("showing error..")
    }
}
