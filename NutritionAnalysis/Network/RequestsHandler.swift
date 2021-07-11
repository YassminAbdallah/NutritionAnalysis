//
//  RequestsHandler.swift
//  NutritionAnalysis
//
// Created by Yassmin on 11/07/2021.
//

import Foundation
import RxSwift
import Moya

class  RequestsHandler {
    
    private let provider = MoyaProvider<Ingredient>()

    func getNutritionData(ingr :String) -> Observable<DTOIngredient>{
        return provider.rx.request(.nutritionData(ingr :ingr)) .filterSuccessfulStatusAndRedirectCodes().map(DTOIngredient.self).asObservable()
    }


}
