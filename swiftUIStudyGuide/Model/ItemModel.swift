//
//  ItemModel.swift
//  swiftUIStudyGuide
//
//  Created by K.J.S.G on 12/16/20.
//
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let hospital = try? newJSONDecoder().decode(Hospital.self, from: jsonData)

import Foundation
import SwiftUI

// MARK: - HospitalElement
class HospitalElement: Codable {
    let hospitalName, city: String
    let type: TypeEnum
    let address: String
    let website: String
    let recordsURL: String
    let phone: String
    let email: String
    let faxForRecords, phoneForRecords, toLabel, attn: String
    let recordsAddress1: String
    let recordsAddress2: RecordsAddress2
    let state: State
    let zipcode: Int?
    let recordRequestFormURLEnglish, recordRequestFormURLSpanish: String
    let selfElectronicForm: String

    enum CodingKeys: String, CodingKey {
        case hospitalName = "Hospital Name"
        case city = "City"
        case type = "Type"
        case address = "Address"
        case website = "Website"
        case recordsURL = "Records URL"
        case phone = "Phone"
        case email = "Email"
        case faxForRecords = "Fax for Records"
        case phoneForRecords = "Phone for Records"
        case toLabel = "To Label"
        case attn = "ATTN:"
        case recordsAddress1 = "Records Address 1"
        case recordsAddress2 = "Records Address 2"
        case state = "State"
        case zipcode = "Zipcode"
        case recordRequestFormURLEnglish = "Record Request Form URL English"
        case recordRequestFormURLSpanish = "Record Request Form URL Spanish"
        case selfElectronicForm = "Self Electronic Form"
    }

    init(hospitalName: String, city: String, type: TypeEnum, address: String, website: String, recordsURL: String, phone: String, email: String, faxForRecords: String, phoneForRecords: String, toLabel: String, attn: String, recordsAddress1: String, recordsAddress2: RecordsAddress2, state: State, zipcode: Int?, recordRequestFormURLEnglish: String, recordRequestFormURLSpanish: String, selfElectronicForm: String) {
        self.hospitalName = hospitalName
        self.city = city
        self.type = type
        self.address = address
        self.website = website
        self.recordsURL = recordsURL
        self.phone = phone
        self.email = email
        self.faxForRecords = faxForRecords
        self.phoneForRecords = phoneForRecords
        self.toLabel = toLabel
        self.attn = attn
        self.recordsAddress1 = recordsAddress1
        self.recordsAddress2 = recordsAddress2
        self.state = state
        self.zipcode = zipcode
        self.recordRequestFormURLEnglish = recordRequestFormURLEnglish
        self.recordRequestFormURLSpanish = recordRequestFormURLSpanish
        self.selfElectronicForm = selfElectronicForm
    }
}

enum RecordsAddress2: String, Codable {
    case canton = "Canton"
    case empty = ""
    case suite170 = "Suite 170 "
    case the555WilsonLane = "555 Wilson Lane"
}

enum State: String, Codable {
    case empty = ""
    case ia = "IA"
    case il = "IL"
}

enum TypeEnum: String, Codable {
    case children = "CHILDREN"
    case criticalAccess = "CRITICAL ACCESS"
    case generalAcuteCare = "GENERAL ACUTE CARE"
    case longTermCare = "LONG TERM CARE"
    case military = "MILITARY"
    case psychiatric = "PSYCHIATRIC"
    case rehabilitation = "REHABILITATION"
}

typealias Hospital = [HospitalElement]

