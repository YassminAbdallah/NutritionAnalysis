//
//  IngredientAnalysisViewController.swift
//  NutritionAnalysis
//
//  Created by Yassmin on 11/07/2021.
//

import UIKit

class IngredientAnalysisViewController: UIViewController {
    
    private var ingredientModel = IngredientViewModel()
    
    
    
    //MARK: - Init -
    init(viewModel: IngredientViewModel) {
        self.ingredientModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - -
    override func viewDidLoad() {
        super.viewDidLoad()
        print(ingredientModel.detailsIngredient.first)
    }
    
}

extension IngredientAnalysisViewController : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return ingredientModel.detailsIngredient.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        return cell
    }
    
    
}
