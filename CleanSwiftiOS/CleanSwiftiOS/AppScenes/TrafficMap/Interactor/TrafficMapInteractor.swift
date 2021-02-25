//
//  TrafficMapInteractor.swift
//  CleanSwiftiOS
//
//  Created by verma mukesh on 25/2/21.
//

import Foundation

class TrafficMapInteractor: TrafficMapInteractorProtocol {
    weak var presenter: TrafficMapPresenterProtocol?
    
    var worker: TrafficMapWorkerProtocol?
    
    func fetchTrafficImagesData() {
        print("start fetching traffic images...")
        worker?.fetchData(completionHandler: {[weak self] in
            print("fetched traffic images...")
            self?.presenter?.handleSuccess()
        })
    }
}
