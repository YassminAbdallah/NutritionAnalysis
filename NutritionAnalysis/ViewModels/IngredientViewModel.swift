//
//  IngredientViewModel.swift
//  NutritionAnalysis
//
//  Created by Yassmin on 11/07/2021.
//


import Foundation
import RxSwift
import RxCocoa


class IngredientViewModel {
    //
    let  networkHandler =  RequestsHandler()
    //
    let dispose = DisposeBag()
    let isLoaded = PublishSubject<Bool>()
    //
    var ingredient : DTOIngredient?
    //
    
    
    
    //MARK: - get nutritionData  -
    func getNutritionData(ingr : String)
    {
        networkHandler.getNutritionData(ingr: ingr).observeOn(MainScheduler.instance).subscribe(onNext: { [weak self](ingredient) in
            self?.ingredient = ingredient
            self?.isLoaded.on(.next(true))
        }, onError: { [weak self](error) in
            self?.isLoaded.onError(error)
        }).disposed(by: dispose)
    }
   
}

