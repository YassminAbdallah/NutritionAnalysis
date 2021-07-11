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
    var detailsIngredient = [DTODetailsIngredient]()
    
    
    
    //MARK: - get nutritionData  -
    func getNutritionData(ingr : String)
    {
        networkHandler.getNutritionData(ingr: ingr).observeOn(MainScheduler.instance).subscribe(onNext: { [weak self](ingredient) in
            self?.convertStringToMeasures(ingr: ingr, ingredient: ingredient)
            self?.ingredient = ingredient
            self?.isLoaded.on(.next(true))
        }, onError: { [weak self](error) in
            self?.isLoaded.onError(error)
        }).disposed(by: dispose)
    }
    
    func convertStringToMeasures(ingr : String , ingredient : DTOIngredient )
    {
        let lineArray = ingr.components(separatedBy: .newlines)
        for line in lineArray{
            let detailsIngre = DTODetailsIngredient()
            let detailsLineArray = line.components(separatedBy: .whitespaces)
            detailsIngre.qty = detailsLineArray[0]
            detailsIngre.unit = detailsLineArray[1]
            detailsIngre.food = detailsLineArray[2]
            detailsIngre.calories = "\(ingredient.calories ?? 0)"
            detailsIngre.weight = "\(ingredient.totalWeight ?? 0)"
            detailsIngredient.append(detailsIngre)
        }
    }
   
}



extension String  {
    var isNumber: Bool {
        return !isEmpty && rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil
    }

}
