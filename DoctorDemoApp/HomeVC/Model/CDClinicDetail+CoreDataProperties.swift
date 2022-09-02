//
//  CDClinicDetail+CoreDataProperties.swift
//  DoctorDemoApp
//
//  Created by Josh on 02/09/22.
//
//

import Foundation
import CoreData


extension CDClinicDetail  : Codable {
  

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDClinicDetail> {
        return NSFetchRequest<CDClinicDetail>(entityName: "CDclinicDetails")
    }

    @NSManaged public var addressAttributes: [String:String]?
    @NSManaged public var allowThirdPartyAccess: Bool
    @NSManaged public var associatedClinicDoctors: [String:String]?
    @NSManaged public var enableOnSearch: Bool
    @NSManaged public var blockConfirmedApt: Bool
    @NSManaged public var blockConfirmedAptMinutes: Int32
    @NSManaged public var clinicDoctorInfo: [String:String]?
    @NSManaged public var clinicOnlineDoctorsList:[String:String]?
    @NSManaged public var clinicTimings: [String:String]?
    @NSManaged public var email: String?
    @NSManaged public var id: Int32
    @NSManaged public var isActive: Bool
    @NSManaged public var isComplete: Bool
    @NSManaged public var landline: String?
    @NSManaged public var mobile: String?
    @NSManaged public var name: String?
    @NSManaged public var owner: [String:String]?
    @NSManaged public var printFooterHgt: Int32
    @NSManaged public var printHeaderHgt: Int32
    @NSManaged public var shareDrugsAcrossClinic: Bool
    @NSManaged public var shareMedicalHistoryAcrossClinic: Bool
    @NSManaged public var sharePrescriptionAcrossClinic: Bool
    @NSManaged public var videoClinicTimings: [String:String]?
    
   
    
    
    enum CodingKeys: String, CodingKey {
            case id, name
            case printHeaderHgt = "print_header_hgt"
            case printFooterHgt = "print_footer_hgt"
            case landline
            case isComplete = "is_complete"
            case enableOnSearch = "enable_on_search"
            case email, mobile
            case shareDrugsAcrossClinic = "share_drugs_across_clinic"
            case allowThirdPartyAccess = "allow_third_party_access"
            case blockConfirmedApt = "block_confirmed_apt"
            case sharePrescriptionAcrossClinic = "share_prescription_across_clinic"
            case blockConfirmedAptMinutes = "block_confirmed_apt_minutes"
            case shareMedicalHistoryAcrossClinic = "share_medical_history_across_clinic"
            case isActive = "is_active"
            case addressAttributes = "address_attributes"
            case clinicOnlineDoctorsList = "clinic_online_doctors_list"
            case owner
            case associatedClinicDoctors = "associated_clinic_doctors"
            case clinicDoctorInfo = "clinic_doctor_info"
            case clinicTimings = "clinic_timings"
            case videoClinicTimings = "video_clinic_timings"
        }
    
}

