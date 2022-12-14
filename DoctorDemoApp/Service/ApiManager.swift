//
//  ApiManager.swift
//  DoctorDemoApp
//
//  Created by Josh on 31/08/22.
//

import Foundation
import UIKit

final class ApiManager{
    private init(){}
    static var sharedInstance = ApiManager()
    
    func getApiData<T:Decodable>(requestUrl: URL, resultType: T.Type, completionHandler:@escaping(_ result: Any?)-> Void)
    {
        
            let defaults = UserDefaults.standard

            let authorization : String? = defaults.value(forKey: Constants.KKeyValues.KAuthorizationToken) as? String
            let apiKey : String? = defaults.value(forKey: Constants.KKeyValues.KXApiKey) as? String

            var request =  URLRequest (url: requestUrl)
            request.httpMethod = "GET"
            request.setValue(Constants.KKeyValues.KHeaderApplicationJSON, forHTTPHeaderField: Constants.KKeyValues.KHeaderContentType)
            request.setValue(Constants.KURL.KAPICurrentVersion, forHTTPHeaderField: Constants.KKeyValues.KHeaderAccept)
            request.setValue(Constants.KKeyValues.KXAPPKEY , forHTTPHeaderField: "X-App-Key")
            
            let buildVersion = Bundle.main.infoDictionary!["CFBundleVersion"] as? String

            request.setValue(String(format:"%@(%@)", Bundle.main.releaseVersionNumberPretty,buildVersion ?? "" ) , forHTTPHeaderField: "X-App-Version")
            let deviceId : String = (UIDevice.current.identifierForVendor?.uuidString)!
            request.setValue(deviceId, forHTTPHeaderField: "X-Device-Id")

            if let auth = authorization
            {
                request.setValue(auth , forHTTPHeaderField: Constants.KKeyValues.KHeaderAuthorization)
            }
            
            if let xApiKey = apiKey{
                request.setValue(xApiKey , forHTTPHeaderField: "X-Api-Key")
            }
        let session = URLSession.shared
        session.dataTask(with: request) { (data, response, error) in
            if let response = response {
                print(response)
            }
            if let data = data {
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
                    print(" **************jeson*************************")
                    print(json)
                    completionHandler(json )
                } catch {
                    print(error)
//                    completionHandler(error)
                }
            }
            
        }.resume()
    }
    
    func postApiData<T:Decodable>(requestUrl :URL,requestBody :Data ,resultType: T.Type, completionHandler:@escaping(_ result: Any)-> ()){
        let buildVersion = Bundle.main.infoDictionary!["CFBundleVersion"] as? String
        let appVersion =  String(format:"%@(%@)", Bundle.main.releaseVersionNumberPretty,buildVersion ?? "" )
        let deviceId : String = UIDevice.current.identifierForVendor!.uuidString

        
    var urlRequest = URLRequest(url: requestUrl)
        
       let headers = [Constants.KKeyValues.KHeaderAccept : Constants.KURL.KAPICurrentVersion,
                   Constants.KKeyValues.KHeaderContentType: Constants.KKeyValues.KHeaderApplicationJSON,
                   "X-App-Key": Constants.KKeyValues.KXAPPKEY,"X-App-Version" :appVersion, "X-Device-Id" : deviceId]
        
        
        print(headers)

        print(requestBody)
        urlRequest.httpMethod = "post"
              urlRequest.httpBody = requestBody
             urlRequest.addValue(  Constants.KURL.KAPICurrentVersion , forHTTPHeaderField: Constants.KKeyValues.KHeaderAccept)
              urlRequest.addValue(  Constants.KKeyValues.KHeaderApplicationJSON , forHTTPHeaderField: Constants.KKeyValues.KHeaderContentType)
              urlRequest.addValue( Constants.KKeyValues.KXAPPKEY, forHTTPHeaderField: "X-App-Key" )
               urlRequest.addValue(appVersion , forHTTPHeaderField: "X-App-Version")
               urlRequest.addValue(deviceId , forHTTPHeaderField: "X-Device-Id")

        urlRequest.httpBody = requestBody
        urlRequest.timeoutInterval = 20
        let session = URLSession.shared
        session.dataTask(with: urlRequest) { (data, response, error) in
            if let response = response {
                print(response)
            }
            if let data = data {
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
                    print(json)
                    completionHandler(json)
                } catch {
                    print(error)
//                    completionHandler(error)
                }
            }
        }.resume()
    }
    
    
}

