//
//  TrafficMapConfiguration.swift
//  CleanSwiftiOS
//
//  Created by verma mukesh on 25/2/21.
//

import Foundation
import UIKit

struct TrafficMapConfiguration {
    static func setup(presenter: TrafficMapPresenterProtocol?, interactor: TrafficMapInteractorProtocol?, router: TrafficMapRouterProtocol?, worker: TrafficMapWorkerProtocol?) -> UIViewController {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: .main)
        guard let viewController = storyBoard.instantiateViewController(identifier: "TrafficMapViewController") as? TrafficMapViewController else {
            return TrafficMapViewController()
        }
        guard let presenter = presenter else {
            return viewController
        }
        interactor?.worker = worker
        interactor?.presenter = presenter
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
        presenter.viewController = viewController
        return viewController
    }
}
