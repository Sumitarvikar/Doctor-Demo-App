//
//  HomeViewModel.swift
//  DoctorDemoApp
//
//  Created by Josh on 02/09/22.
//

import Foundation

struct HomeViewModel{
func getClinicListRecord( completionHandler:@escaping(_ result: Array<CDClinicDetail>?)-> Void) {
        DataServiceManager.shared.getclinicdetails(){
            (response) in
            completionHandler(response)
            }
    }
}
