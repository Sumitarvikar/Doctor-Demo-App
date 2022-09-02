//
//  ClinicDetails.swift
//  DoctorDemoApp
//
//  Created by Josh on 02/09/22.
//

import Foundation
import CloudKit



//struct ClinicResponse : Encodable {
//    let errorMessage: String?
//    let clinicList: [Clinicdetails]?
//
//    enum CodingKeys: String, CodingKey {
//        case clinics  = "data"
//        case errorMessage
//    }
    
    
//}


public class Clinicdetails : Codable {
    
    
    
    
    
      let addressAttributes: [String : String]?
      let allowThirdPartyAccess: Bool?
      let associatedClinicDoctors: [String : String]?
      let enableOnSearch: Bool?
      let blockConfirmedApt: Bool?
      let blockConfirmedAptMinutes: Int32?
      let clinicDoctorInfo: [String : String]?
      let clinicOnlineDoctorsList: [String : String]?
      let clinicTimings: [String : String]?
      let email: String?
      let id: Int16?
      let isActive: Bool?
      let isComplete: Bool?
      let landline: String?
      let mobile: String?
      let name: String?
      let owner: [String : String]?
      let printFooterHgt: Int32?
      let printHeaderHgt: Int32?
      let shareDrugsAcrossClinic: Bool?
      let shareMedicalHistoryAcrossClinic: Bool?
      let sharePrescriptionAcrossClinic: Bool?
    let videoClinicTimings: [String : String]?
    
    
    
//    init( )
//
//    enum CodingKeys: String, CodingKey {
//            case id, name
//            case printHeaderHgt = "print_header_hgt"
//            case printFooterHgt = "print_footer_hgt"
//            case landline
//            case isComplete = "is_complete"
//            case enableOnSearch = "enable_on_search"
//            case email, mobile
//            case shareDrugsAcrossClinic = "share_drugs_across_clinic"
//            case allowThirdPartyAccess = "allow_third_party_access"
//            case blockConfirmedApt = "block_confirmed_apt"
//            case sharePrescriptionAcrossClinic = "share_prescription_across_clinic"
//            case blockConfirmedAptMinutes = "block_confirmed_apt_minutes"
//            case shareMedicalHistoryAcrossClinic = "share_medical_history_across_clinic"
//            case isActive = "is_active"
//            case addressAttributes = "address_attributes"
//            case clinicOnlineDoctorsList = "clinic_online_doctors_list"
//            case owner
//            case associatedClinicDoctors = "associated_clinic_doctors"
//            case clinicDoctorInfo = "clinic_doctor_info"
//            case clinicTimings = "clinic_timings"
//            case videoClinicTimings = "video_clinic_timings"
//        }
//
//
//    convenience required init(from decoder: Decoder) throws {
//
//
//
//        self.init()
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//
//        let id = try container.decode(Int16?.self, forKey: .id)
//        let name = try container.decode(String?.self, forKey: .name)
//
//// let isComplete: Bool?
//        let landline = try container.decode(String?.self, forKey: .landline)
//        let mobile = try container.decode(String?.self, forKey: .mobile)
//        let owner = try container.decode([String : String]?.self, forKey: .owner)
//        let email = try container.decode(String?.self, forKey: .email)
//        let associatedClinicDoctors = try container.decode([String : String]?.self, forKey: .associatedClinicDoctors)
//        let addressAttributes = try container.decode([String : String]?.self, forKey: .addressAttributes)
//        let clinicDoctorInfo = try container.decode([String : String]?.self, forKey: .clinicDoctorInfo)
//
//        let clinicOnlineDoctorsList = try container.decode([String : String]?.self, forKey: .clinicOnlineDoctorsList)
//        let clinicTimings = try container.decode([String : String]?.self, forKey: .clinicTimings)
//        let videoClinicTimings = try container.decode([String : String]?.self, forKey: .videoClinicTimings)
//        let enableOnSearch = try container.decode(Bool?.self, forKey: .enableOnSearch)
//        let allowThirdPartyAccess = try container.decode(Bool?.self, forKey: .allowThirdPartyAccess)
//        let blockConfirmedApt = try container.decode(Bool?.self, forKey: .blockConfirmedApt)
//        let isActive = try container.decode(Bool?.self, forKey: .isActive)
//        let isComplete = try container.decode(Bool?.self, forKey: .isComplete)
//        let shareMedicalHistoryAcrossClinic = try container.decode(Bool?.self, forKey: .shareMedicalHistoryAcrossClinic)
//        let sharePrescriptionAcrossClinic = try container.decode(Bool?.self, forKey: .sharePrescriptionAcrossClinic)
//
//        let  shareDrugsAcrossClinic = try container.decode(Bool?.self, forKey: .shareDrugsAcrossClinic)
//
//        let printHeaderHgt = try container.decode(Int32?.self, forKey: .printHeaderHgt)
//        let printFooterHgt = try container.decode(Int32?.self, forKey: .printFooterHgt)
//        let blockConfirmedAptMinutes = try container.decode(Int32?.self, forKey: .blockConfirmedAptMinutes)
//
//    }
//    public func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//        try container.encode(sharePrescriptionAcrossClinic, forKey: .sharePrescriptionAcrossClinic)
//        try container.encode(id  , forKey: .id)
//        try container.encode(email ?? "" , forKey: .email)
//        try container.encode(mobile ?? "" , forKey: .mobile)
//        try container.encode(landline ?? "" , forKey: .landline)
//        try container.encode(printFooterHgt  , forKey: .printFooterHgt)
//        try container.encode(printHeaderHgt, forKey: .printHeaderHgt)
//        try container.encode(isComplete , forKey: .isComplete)
//        try container.encode(enableOnSearch , forKey: .enableOnSearch)
//        try container.encode(shareDrugsAcrossClinic , forKey: .shareDrugsAcrossClinic)
//        try container.encode(allowThirdPartyAccess , forKey: .allowThirdPartyAccess)
//        try container.encode(name ?? "" , forKey: .name)
//        try container.encode(blockConfirmedApt  , forKey: .blockConfirmedApt)
//        try container.encode(shareMedicalHistoryAcrossClinic  , forKey: .shareMedicalHistoryAcrossClinic)
//        try container.encode(isActive  , forKey: .isActive)
//        try container.encode(addressAttributes , forKey: .addressAttributes)
//        try container.encode(clinicOnlineDoctorsList, forKey: .clinicOnlineDoctorsList)
//        try container.encode(owner, forKey: .owner)
//        try container.encode(associatedClinicDoctors , forKey: .associatedClinicDoctors)
//        try container.encode(clinicDoctorInfo , forKey: .clinicDoctorInfo)
//        try container.encode(videoClinicTimings, forKey: .videoClinicTimings)
//        try container.encode(blockConfirmedAptMinutes, forKey: .blockConfirmedAptMinutes)
//        try container.encode(clinicTimings, forKey: .clinicTimings)
//
//
//



   





//    case associatedClinicDoctors = "associated_clinic_doctors"
//    case clinicDoctorInfo = "clinic_doctor_info"
//    case clinicTimings = "clinic_timings"
//    case videoClinicTimings = "video_clinic_timings"
}
   

