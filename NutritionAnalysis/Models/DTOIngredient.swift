//
//  DTOIngredient.swift
//  NutritionAnalysis
//
//  Created by Yassmin on 11/07/2021.
//

import Foundation

struct DTOIngredient : Codable {
    
    let uri : String?
    let calories : Int?
    let totalWeight : Int?
    let dietLabels : [String]?
    let healthLabels : [String]?
    let cautions : [String]?
    let totalNutrients : TotalNutrients?
    let totalDaily : TotalDaily?
    let totalNutrientsKCal : TotalNutrientsKCal?

    enum CodingKeys: String, CodingKey {

        case uri = "uri"
        case calories = "calories"
        case totalWeight = "totalWeight"
        case dietLabels = "dietLabels"
        case healthLabels = "healthLabels"
        case cautions = "cautions"
        case totalNutrients = "totalNutrients"
        case totalDaily = "totalDaily"
        case totalNutrientsKCal = "totalNutrientsKCal"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        uri = try values.decodeIfPresent(String.self, forKey: .uri)
        calories = try values.decodeIfPresent(Int.self, forKey: .calories)
        totalWeight = try values.decodeIfPresent(Int.self, forKey: .totalWeight)
        dietLabels = try values.decodeIfPresent([String].self, forKey: .dietLabels)
        healthLabels = try values.decodeIfPresent([String].self, forKey: .healthLabels)
        cautions = try values.decodeIfPresent([String].self, forKey: .cautions)
        totalNutrients = try values.decodeIfPresent(TotalNutrients.self, forKey: .totalNutrients)
        totalDaily = try values.decodeIfPresent(TotalDaily.self, forKey: .totalDaily)
        totalNutrientsKCal = try values.decodeIfPresent(TotalNutrientsKCal.self, forKey: .totalNutrientsKCal)
    }

}

struct TotalDaily : Codable {
    let eNERC_KCAL : GeneralDetails?
    let fAT : GeneralDetails?
    let fASAT : GeneralDetails?
    let cHOCDF : GeneralDetails?
    let fIBTG : GeneralDetails?
    let pROCNT : GeneralDetails?
    let cHOLE : GeneralDetails?
    let nA : GeneralDetails?
    let cA : GeneralDetails?
    let mG : GeneralDetails?
    let k : GeneralDetails?
    let fE : GeneralDetails?
    let zN : GeneralDetails?
    let p : GeneralDetails?
    let vITA_RAE : GeneralDetails?
    let vITC : GeneralDetails?
    let tHIA : GeneralDetails?
    let rIBF : GeneralDetails?
    let nIA : GeneralDetails?
    let vITB6A : GeneralDetails?
    let fOLDFE : GeneralDetails?
    let vITB12 : GeneralDetails?
    let vITD : GeneralDetails?
    let tOCPHA : GeneralDetails?
    let vITK1 : GeneralDetails?

    enum CodingKeys: String, CodingKey {

        case eNERC_KCAL = "ENERC_KCAL"
        case fAT = "FAT"
        case fASAT = "FASAT"
        case cHOCDF = "CHOCDF"
        case fIBTG = "FIBTG"
        case pROCNT = "PROCNT"
        case cHOLE = "CHOLE"
        case nA = "NA"
        case cA = "CA"
        case mG = "MG"
        case k = "K"
        case fE = "FE"
        case zN = "ZN"
        case p = "P"
        case vITA_RAE = "VITA_RAE"
        case vITC = "VITC"
        case tHIA = "THIA"
        case rIBF = "RIBF"
        case nIA = "NIA"
        case vITB6A = "VITB6A"
        case fOLDFE = "FOLDFE"
        case vITB12 = "VITB12"
        case vITD = "VITD"
        case tOCPHA = "TOCPHA"
        case vITK1 = "VITK1"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        eNERC_KCAL = try values.decodeIfPresent(GeneralDetails.self, forKey: .eNERC_KCAL)
        fAT = try values.decodeIfPresent(GeneralDetails.self, forKey: .fAT)
        fASAT = try values.decodeIfPresent(GeneralDetails.self, forKey: .fASAT)
        cHOCDF = try values.decodeIfPresent(GeneralDetails.self, forKey: .cHOCDF)
        fIBTG = try values.decodeIfPresent(GeneralDetails.self, forKey: .fIBTG)
        pROCNT = try values.decodeIfPresent(GeneralDetails.self, forKey: .pROCNT)
        cHOLE = try values.decodeIfPresent(GeneralDetails.self, forKey: .cHOLE)
        nA = try values.decodeIfPresent(GeneralDetails.self, forKey: .nA)
        cA = try values.decodeIfPresent(GeneralDetails.self, forKey: .cA)
        mG = try values.decodeIfPresent(GeneralDetails.self, forKey: .mG)
        k = try values.decodeIfPresent(GeneralDetails.self, forKey: .k)
        fE = try values.decodeIfPresent(GeneralDetails.self, forKey: .fE)
        zN = try values.decodeIfPresent(GeneralDetails.self, forKey: .zN)
        p = try values.decodeIfPresent(GeneralDetails.self, forKey: .p)
        vITA_RAE = try values.decodeIfPresent(GeneralDetails.self, forKey: .vITA_RAE)
        vITC = try values.decodeIfPresent(GeneralDetails.self, forKey: .vITC)
        tHIA = try values.decodeIfPresent(GeneralDetails.self, forKey: .tHIA)
        rIBF = try values.decodeIfPresent(GeneralDetails.self, forKey: .rIBF)
        nIA = try values.decodeIfPresent(GeneralDetails.self, forKey: .nIA)
        vITB6A = try values.decodeIfPresent(GeneralDetails.self, forKey: .vITB6A)
        fOLDFE = try values.decodeIfPresent(GeneralDetails.self, forKey: .fOLDFE)
        vITB12 = try values.decodeIfPresent(GeneralDetails.self, forKey: .vITB12)
        vITD = try values.decodeIfPresent(GeneralDetails.self, forKey: .vITD)
        tOCPHA = try values.decodeIfPresent(GeneralDetails.self, forKey: .tOCPHA)
        vITK1 = try values.decodeIfPresent(GeneralDetails.self, forKey: .vITK1)
    }

}
struct TotalNutrients : Codable {
    let eNERC_KCAL : GeneralDetails?
    let fAT : GeneralDetails?
    let fASAT : GeneralDetails?
    let fAMS : GeneralDetails?
    let fAPU : GeneralDetails?
    let cHOCDF : GeneralDetails?
    let fIBTG : GeneralDetails?
    let sUGAR : GeneralDetails?
    let pROCNT : GeneralDetails?
    let cHOLE : GeneralDetails?
    let nA : GeneralDetails?
    let cA : GeneralDetails?
    let mG : GeneralDetails?
    let k : GeneralDetails?
    let fE : GeneralDetails?
    let zN : GeneralDetails?
    let p : GeneralDetails?
    let vITA_RAE : GeneralDetails?
    let vITC : GeneralDetails?
    let tHIA : GeneralDetails?
    let rIBF : GeneralDetails?
    let nIA : GeneralDetails?
    let vITB6A : GeneralDetails?
    let fOLDFE : GeneralDetails?
    let fOLFD : GeneralDetails?
    let fOLAC : GeneralDetails?
    let vITB12 : GeneralDetails?
    let vITD : GeneralDetails?
    let tOCPHA : GeneralDetails?
    let vITK1 : GeneralDetails?
    let wATER : GeneralDetails?

    enum CodingKeys: String, CodingKey {

        case eNERC_KCAL = "ENERC_KCAL"
        case fAT = "FAT"
        case fASAT = "FASAT"
        case fAMS = "FAMS"
        case fAPU = "FAPU"
        case cHOCDF = "CHOCDF"
        case fIBTG = "FIBTG"
        case sUGAR = "SUGAR"
        case pROCNT = "PROCNT"
        case cHOLE = "CHOLE"
        case nA = "NA"
        case cA = "CA"
        case mG = "MG"
        case k = "K"
        case fE = "FE"
        case zN = "ZN"
        case p = "P"
        case vITA_RAE = "VITA_RAE"
        case vITC = "VITC"
        case tHIA = "THIA"
        case rIBF = "RIBF"
        case nIA = "NIA"
        case vITB6A = "VITB6A"
        case fOLDFE = "FOLDFE"
        case fOLFD = "FOLFD"
        case fOLAC = "FOLAC"
        case vITB12 = "VITB12"
        case vITD = "VITD"
        case tOCPHA = "TOCPHA"
        case vITK1 = "VITK1"
        case wATER = "WATER"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        eNERC_KCAL = try values.decodeIfPresent(GeneralDetails.self, forKey: .eNERC_KCAL)
        fAT = try values.decodeIfPresent(GeneralDetails.self, forKey: .fAT)
        fASAT = try values.decodeIfPresent(GeneralDetails.self, forKey: .fASAT)
        fAMS = try values.decodeIfPresent(GeneralDetails.self, forKey: .fAMS)
        fAPU = try values.decodeIfPresent(GeneralDetails.self, forKey: .fAPU)
        cHOCDF = try values.decodeIfPresent(GeneralDetails.self, forKey: .cHOCDF)
        fIBTG = try values.decodeIfPresent(GeneralDetails.self, forKey: .fIBTG)
        sUGAR = try values.decodeIfPresent(GeneralDetails.self, forKey: .sUGAR)
        pROCNT = try values.decodeIfPresent(GeneralDetails.self, forKey: .pROCNT)
        cHOLE = try values.decodeIfPresent(GeneralDetails.self, forKey: .cHOLE)
        nA = try values.decodeIfPresent(GeneralDetails.self, forKey: .nA)
        cA = try values.decodeIfPresent(GeneralDetails.self, forKey: .cA)
        mG = try values.decodeIfPresent(GeneralDetails.self, forKey: .mG)
        k = try values.decodeIfPresent(GeneralDetails.self, forKey: .k)
        fE = try values.decodeIfPresent(GeneralDetails.self, forKey: .fE)
        zN = try values.decodeIfPresent(GeneralDetails.self, forKey: .zN)
        p = try values.decodeIfPresent(GeneralDetails.self, forKey: .p)
        vITA_RAE = try values.decodeIfPresent(GeneralDetails.self, forKey: .vITA_RAE)
        vITC = try values.decodeIfPresent(GeneralDetails.self, forKey: .vITC)
        tHIA = try values.decodeIfPresent(GeneralDetails.self, forKey: .tHIA)
        rIBF = try values.decodeIfPresent(GeneralDetails.self, forKey: .rIBF)
        nIA = try values.decodeIfPresent(GeneralDetails.self, forKey: .nIA)
        vITB6A = try values.decodeIfPresent(GeneralDetails.self, forKey: .vITB6A)
        fOLDFE = try values.decodeIfPresent(GeneralDetails.self, forKey: .fOLDFE)
        fOLFD = try values.decodeIfPresent(GeneralDetails.self, forKey: .fOLFD)
        fOLAC = try values.decodeIfPresent(GeneralDetails.self, forKey: .fOLAC)
        vITB12 = try values.decodeIfPresent(GeneralDetails.self, forKey: .vITB12)
        vITD = try values.decodeIfPresent(GeneralDetails.self, forKey: .vITD)
        tOCPHA = try values.decodeIfPresent(GeneralDetails.self, forKey: .tOCPHA)
        vITK1 = try values.decodeIfPresent(GeneralDetails.self, forKey: .vITK1)
        wATER = try values.decodeIfPresent(GeneralDetails.self, forKey: .wATER)
    }

}


struct TotalNutrientsKCal : Codable {
    let eNERC_KCAL : GeneralDetails?
    let pROCNT_KCAL : GeneralDetails?
    let fAT_KCAL : GeneralDetails?
    let cHOCDF_KCAL : GeneralDetails?

    enum CodingKeys: String, CodingKey {

        case eNERC_KCAL = "ENERC_KCAL"
        case pROCNT_KCAL = "PROCNT_KCAL"
        case fAT_KCAL = "FAT_KCAL"
        case cHOCDF_KCAL = "CHOCDF_KCAL"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        eNERC_KCAL = try values.decodeIfPresent(GeneralDetails.self, forKey: .eNERC_KCAL)
        pROCNT_KCAL = try values.decodeIfPresent(GeneralDetails.self, forKey: .pROCNT_KCAL)
        fAT_KCAL = try values.decodeIfPresent(GeneralDetails.self, forKey: .fAT_KCAL)
        cHOCDF_KCAL = try values.decodeIfPresent(GeneralDetails.self, forKey: .cHOCDF_KCAL)
    }

}


struct GeneralDetails : Codable {
    let label : String?
    let quantity : Double?
    let unit : String?

    enum CodingKeys: String, CodingKey {

        case label = "label"
        case quantity = "quantity"
        case unit = "unit"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        label = try values.decodeIfPresent(String.self, forKey: .label)
        quantity = try values.decodeIfPresent(Double.self, forKey: .quantity)
        unit = try values.decodeIfPresent(String.self, forKey: .unit)
    }

}



class DTODetailsIngredient : NSObject {
    var qty : String?
    var unit : String?
    var food : String?
    var calories : String?
    var weight : String?

//    enum CodingKeys: String, CodingKey {
//
//        case qty = "qty"
//        case unit = "unit"
//        case food = "food"
//    }
//
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        qty = try values.decodeIfPresent(String.self, forKey: .qty)
//        unit = try values.decodeIfPresent(String.self, forKey: .unit)
//        food = try values.decodeIfPresent(String.self, forKey: .food)
//    }

}
