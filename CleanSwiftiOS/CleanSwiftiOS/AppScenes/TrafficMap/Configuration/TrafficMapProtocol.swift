//
//  TrafficMapProtocol.swift
//  CleanSwiftiOS
//
//  Created by verma mukesh on 25/2/21.
//

import Foundation

protocol TrafficMapViewControllerProtocol: class {
    var presenter: TrafficMapPresenterProtocol? {get set}
    func startProcessForShowingTrafficPin()
    func showTrafficImagesPinNow()
    func showError()
}

protocol TrafficMapPresenterProtocol: class {
    func displayTrafficsOnMap()
    func handleSuccess()
    func HandleError()
    func previewTrafficImage()
    var router: TrafficMapRouterProtocol? {get set}
    var interactor: TrafficMapInteractorProtocol? {get set}
    var viewController: TrafficMapViewControllerProtocol? {get set}
}

protocol TrafficMapRouterProtocol {
    func showImage()
}
protocol TrafficMapInteractorProtocol: class {
    var worker: TrafficMapWorkerProtocol? {get set}
    var presenter: TrafficMapPresenterProtocol? {get set}
    func fetchTrafficImagesData()
}
protocol TrafficMapWorkerProtocol {
    func fetchData(completionHandler: @escaping (() -> ()))
}
