//
//  CDClinicDetail+CoreDataClass.swift
//  DoctorDemoApp
//
//  Created by Josh on 02/09/22.
//
//

import Foundation
import CoreData

@objc(CDClinicDetail)
public class CDClinicDetail: NSManagedObject , NSCoding {
    public func encode(with coder: NSCoder) {
        
        coder.encode(name, forKey: CodingKeys.name.rawValue)
        coder.encode(id, forKey: CodingKeys.id.rawValue)
        coder.encode(email, forKey: CodingKeys.email.rawValue)
        coder.encode(mobile, forKey: CodingKeys.mobile.rawValue)
        coder.encode(printHeaderHgt, forKey: CodingKeys.printHeaderHgt.rawValue)
        coder.encode(printFooterHgt, forKey: CodingKeys.printFooterHgt.rawValue)
        coder.encode(landline, forKey: CodingKeys.landline.rawValue)
        coder.encode(isComplete, forKey: CodingKeys.isComplete.rawValue)
        coder.encode(enableOnSearch, forKey: CodingKeys.enableOnSearch.rawValue)
        coder.encode(shareDrugsAcrossClinic, forKey: CodingKeys.shareDrugsAcrossClinic.rawValue)
        coder.encode(allowThirdPartyAccess, forKey: CodingKeys.allowThirdPartyAccess.rawValue)
        coder.encode(blockConfirmedApt, forKey: CodingKeys.blockConfirmedApt.rawValue)
        coder.encode(sharePrescriptionAcrossClinic, forKey: CodingKeys.sharePrescriptionAcrossClinic.rawValue)
        coder.encode(blockConfirmedAptMinutes, forKey: CodingKeys.blockConfirmedAptMinutes.rawValue)
        coder.encode(shareMedicalHistoryAcrossClinic, forKey: CodingKeys.shareMedicalHistoryAcrossClinic.rawValue)
        coder.encode(isActive, forKey: CodingKeys.isActive.rawValue)
        coder.encode(addressAttributes, forKey: CodingKeys.addressAttributes.rawValue)
        coder.encode(clinicOnlineDoctorsList, forKey: CodingKeys.clinicOnlineDoctorsList.rawValue)
        coder.encode(associatedClinicDoctors, forKey: CodingKeys.associatedClinicDoctors.rawValue)
        coder.encode(clinicDoctorInfo, forKey: CodingKeys.clinicDoctorInfo.rawValue)
//        coder.encode(incompleteClinic, forKey: CodingKeys.incompleteClinic.rawValue)
//        coder.encode(resource, forKey: CodingKeys.resource.rawValue)
        coder.encode(clinicTimings, forKey: CodingKeys.clinicTimings.rawValue)
        coder.encode(videoClinicTimings, forKey: CodingKeys.videoClinicTimings.rawValue)
        
    }
    

    
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(sharePrescriptionAcrossClinic, forKey: .sharePrescriptionAcrossClinic)
        try container.encode(id  , forKey: .id)
        try container.encode(email ?? "" , forKey: .email)
        try container.encode(mobile ?? "" , forKey: .mobile)
        try container.encode(landline ?? "" , forKey: .landline)
        try container.encode(printFooterHgt  , forKey: .printFooterHgt)
        try container.encode(printHeaderHgt, forKey: .printHeaderHgt)
        try container.encode(isComplete , forKey: .isComplete)
        try container.encode(enableOnSearch , forKey: .enableOnSearch)
        try container.encode(shareDrugsAcrossClinic , forKey: .shareDrugsAcrossClinic)
        try container.encode(allowThirdPartyAccess , forKey: .allowThirdPartyAccess)
        try container.encode(name ?? "" , forKey: .name)
        try container.encode(blockConfirmedApt  , forKey: .blockConfirmedApt)
        try container.encode(shareMedicalHistoryAcrossClinic  , forKey: .shareMedicalHistoryAcrossClinic)
        try container.encode(isActive  , forKey: .isActive)
        try container.encode(addressAttributes , forKey: .addressAttributes)
        try container.encode(clinicOnlineDoctorsList, forKey: .clinicOnlineDoctorsList)
        try container.encode(owner, forKey: .owner)
        try container.encode(associatedClinicDoctors , forKey: .associatedClinicDoctors)
        try container.encode(clinicDoctorInfo , forKey: .clinicDoctorInfo)
        try container.encode(videoClinicTimings, forKey: .videoClinicTimings)
        try container.encode(blockConfirmedAptMinutes, forKey: .blockConfirmedAptMinutes)
        try container.encode(clinicTimings, forKey: .clinicTimings)
    
    
    



   





//    case associatedClinicDoctors = "associated_clinic_doctors"
//    case clinicDoctorInfo = "clinic_doctor_info"
//    case clinicTimings = "clinic_timings"
//    case videoClinicTimings = "video_clinic_timings"
}
    public required convenience init(from decoder: Decoder) throws {
        

    
        self.init()
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let id = try container.decode(Int16?.self, forKey: .id)
        let name = try container.decode(String?.self, forKey: .name)
        
// let isComplete: Bool?
        let landline = try container.decode(String?.self, forKey: .landline)
        let mobile = try container.decode(String?.self, forKey: .mobile)
        let owner = try container.decode([String : String]?.self, forKey: .owner)
        let email = try container.decode(String?.self, forKey: .email)
        let associatedClinicDoctors = try container.decode([String : String]?.self, forKey: .associatedClinicDoctors)
        let addressAttributes = try container.decode([String : String]?.self, forKey: .addressAttributes)
        let clinicDoctorInfo = try container.decode([String : String]?.self, forKey: .clinicDoctorInfo)
        
        let clinicOnlineDoctorsList = try container.decode([String : String]?.self, forKey: .clinicOnlineDoctorsList)
        let clinicTimings = try container.decode([String : String]?.self, forKey: .clinicTimings)
        let videoClinicTimings = try container.decode([String : String]?.self, forKey: .videoClinicTimings)
        let enableOnSearch = try container.decode(Bool?.self, forKey: .enableOnSearch)
        let allowThirdPartyAccess = try container.decode(Bool?.self, forKey: .allowThirdPartyAccess)
        let blockConfirmedApt = try container.decode(Bool?.self, forKey: .blockConfirmedApt)
        let isActive = try container.decode(Bool?.self, forKey: .isActive)
        let isComplete = try container.decode(Bool?.self, forKey: .isComplete)
        let shareMedicalHistoryAcrossClinic = try container.decode(Bool?.self, forKey: .shareMedicalHistoryAcrossClinic)
        let sharePrescriptionAcrossClinic = try container.decode(Bool?.self, forKey: .sharePrescriptionAcrossClinic)
        
        let  shareDrugsAcrossClinic = try container.decode(Bool?.self, forKey: .shareDrugsAcrossClinic)
      
        let printHeaderHgt = try container.decode(Int32?.self, forKey: .printHeaderHgt)
        let printFooterHgt = try container.decode(Int32?.self, forKey: .printFooterHgt)
        let blockConfirmedAptMinutes = try container.decode(Int32?.self, forKey: .blockConfirmedAptMinutes)
        
    }
    
    public required convenience init?(coder aDecoder: NSCoder) {
        
//        @NSManaged public var addressAttributes: [String:String]?
//        @NSManaged public var allowThirdPartyAccess: Bool
//        @NSManaged public var associatedClinicDoctors: [String:String]?
//        @NSManaged public var enableOnSearch: Bool
//        @NSManaged public var blockConfirmedApt: Bool
//        @NSManaged public var blockConfirmedAptMinutes: Int32
//        @NSManaged public var clinicDoctorInfo: [String:String]?
//        @NSManaged public var clinicOnlineDoctorsList:[String:String]?
//        @NSManaged public var clinicTimings: [String:String]?
//        @NSManaged public var email: String?
//        @NSManaged public var id: Int32
//        @NSManaged public var isActive: [String:String]?
//        @NSManaged public var isComplete: Bool



        self.init()
        
        self.id = aDecoder.decodeInt32(forKey: CodingKeys.id.rawValue)
        self.name = aDecoder.decodeObject(forKey: CodingKeys.name.rawValue) as? String
        self.email = aDecoder.decodeObject(forKey: CodingKeys.email.rawValue) as? String
        self.landline = aDecoder.decodeObject(forKey: CodingKeys.landline.rawValue) as? String
        self.mobile = aDecoder.decodeObject(forKey: CodingKeys.mobile.rawValue) as? String
        self.printFooterHgt  = aDecoder.decodeInt32(forKey: CodingKeys.printFooterHgt.rawValue)
        self.printHeaderHgt  = aDecoder.decodeInt32(forKey: CodingKeys.printHeaderHgt.rawValue)
        self.shareDrugsAcrossClinic = aDecoder.decodeBool(forKey: CodingKeys.shareDrugsAcrossClinic.rawValue)
        self.shareMedicalHistoryAcrossClinic = aDecoder.decodeBool(forKey: CodingKeys.shareMedicalHistoryAcrossClinic.rawValue)
        self.sharePrescriptionAcrossClinic = aDecoder.decodeBool(forKey: CodingKeys.sharePrescriptionAcrossClinic.rawValue)
        self.videoClinicTimings = aDecoder.decodeObject(forKey: CodingKeys.videoClinicTimings.rawValue) as? [String : String]
        self.owner = aDecoder.decodeObject(forKey: CodingKeys.owner.rawValue) as? [String:String]
        self.isActive = aDecoder.decodeBool(forKey: CodingKeys.isActive.rawValue)
        self.isComplete = aDecoder.decodeBool(forKey: CodingKeys.isComplete.rawValue)
        self.clinicTimings = aDecoder.decodeObject(forKey: CodingKeys.clinicTimings.rawValue) as? [String : String]
        self.clinicDoctorInfo = aDecoder.decodeObject(forKey: CodingKeys.clinicDoctorInfo.rawValue) as? [String : String]
        self.clinicOnlineDoctorsList = aDecoder.decodeObject(forKey: CodingKeys.clinicOnlineDoctorsList.rawValue) as? [String : String]
        self.addressAttributes = aDecoder.decodeObject(forKey: CodingKeys.addressAttributes.rawValue) as? [String : String]
        self.associatedClinicDoctors = aDecoder.decodeObject(forKey: CodingKeys.associatedClinicDoctors.rawValue) as? [String : String]
        self.blockConfirmedApt = aDecoder.decodeBool(forKey: CodingKeys.blockConfirmedApt.rawValue)
        self.allowThirdPartyAccess = aDecoder.decodeBool(forKey: CodingKeys.allowThirdPartyAccess.rawValue)
        self.enableOnSearch = aDecoder.decodeBool(forKey: CodingKeys.enableOnSearch.rawValue)
        self.blockConfirmedAptMinutes = aDecoder.decodeInt32(forKey: CodingKeys.blockConfirmedAptMinutes.rawValue)
    }

}
