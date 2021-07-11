//
//  Ingredient.swift
//  NutritionAnalysis
//
//  Created by Yassmin on 11/07/2021.
//

import Moya

public enum Ingredient  {
    case nutritionData(ingr : String)
}


//MARK: - Target type -
extension Ingredient : TargetType {
    
    //
    public var baseURL: URL {
        return URL(string: "https://api.edamam.com/api")!
    }
    
    //
    public var path: String {
        switch self {
        case .nutritionData:
            return "/nutrition-data"
        }
    }
    
    //
    public var method: Moya.Method {
        switch self {
        case .nutritionData:
            return .get
        }
    }
    
    //
    public var sampleData: Data {
        return Data()
    }
    
    //
    public var task: Task {
        switch self {
        case .nutritionData(let ingr):
            return .requestParameters(parameters: ["app_id": "bd5510bf","app_key":"918b7bab56311377288bbfb8fc4a7866","nutrition-type" : "logging" , "ingr":ingr], encoding: URLEncoding.queryString)
        }
    }
    
    //
    public var headers: [String: String]? {
        return ["Content-Type": "application/json"]
    }
    
    //
    public var validationType: ValidationType {
        return .successCodes
    }
}
