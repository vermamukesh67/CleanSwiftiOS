//
//  TrafficMapPresenter.swift
//  CleanSwiftiOS
//
//  Created by verma mukesh on 25/2/21.
//

import Foundation

class TrafficMapPresenter: TrafficMapPresenterProtocol {
    func handleSuccess() {
        print("yeh success...")
        viewController?.showTrafficImagesPinNow()
    }
    
    func HandleError() {
        print("ooppss error...")
        viewController?.showError()
    }
    
    var interactor: TrafficMapInteractorProtocol?
    
    var router: TrafficMapRouterProtocol?
    
    weak var viewController: TrafficMapViewControllerProtocol?
    
    func displayTrafficsOnMap() {
        print("presenter display traffics on map")
        interactor?.fetchTrafficImagesData()
    }
    
    func previewTrafficImage() {
        router?.showImage()
    }
}
