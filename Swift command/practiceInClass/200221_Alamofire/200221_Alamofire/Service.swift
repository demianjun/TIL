//
//  Service.swift
//  200221_Alamofire
//
//  Created by Demian on 2020/02/21.
//  Copyright © 2020 Demian. All rights reserved.
//

import Alamofire

final class ServiceManager {
  static let shared = ServiceManager()
  
  private let baseURL = "https://go.aws/2PcKamh"
  private var reachability = NetworkReachabilityManager(host: "google.com") 
  
  private init() {
    reachability?.startListening{ (status) in
      switch status {
      case .notReachable: print("notReachable")
      case .reachable(.cellular): print("cellular")
      case .reachable(.ethernetOrWiFi): print("ethernetOrWiFi")
      case .unknown: print("unknown")
      }
    }
  }
  
  func requestUser(completionHandler: @escaping (Result<[User], Error>) -> Void) {
    AF.request(baseURL)
      .validate()
      .responseDecodable { (reponse: DataResponse<[User], AFError>) in
        switch reponse.result {
        case .success(let user):
          completionHandler(.success(user))
        case .failure(let error):
          completionHandler(.failure(error))
        }
    }
  }
  
  func requestImage(_ url: String, completionHandler: @escaping (Result<Data, Error>) -> Void) {
    AF.request(url)
      .validate()
      .responseData { (response) in
        switch response.result {
        case .success(let data):
          completionHandler(.success(data))
        case .failure(let error):
          completionHandler(.failure(error))
        }
    }
  }
}
