//
//  TrafficMapDataWorker.swift
//  CleanSwiftiOS
//
//  Created by verma mukesh on 25/2/21.
//

import Foundation

class TrafficMapWorker: TrafficMapWorkerProtocol {
    func fetchData(completionHandler: @escaping (() -> ())) {
        print("fetching traffic images task is running...")
        completionHandler()
    }
}
