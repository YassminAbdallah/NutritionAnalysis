//
//  IngredientListViewController.swift
//  NutritionAnalysis
//
//  Created by Yassmin on 11/07/2021.
//

import UIKit
import RxSwift
import RxCocoa

class IngredientListViewController: UIViewController {
    
    private let ingredientModel = IngredientViewModel()
    private let dispose = DisposeBag()
    //
    
    @IBOutlet weak var reciepeTitletextField: UITextField!
    
    var textViewPlaceHolderLabel : UILabel! {
        didSet{
            textViewPlaceHolderLabel.text = "For example: \n\n1 cup rice \n\n10 oz chickpeas"
            textViewPlaceHolderLabel.font = UIFont.italicSystemFont(ofSize: (ingredientTextView.font?.pointSize)!)
            textViewPlaceHolderLabel.numberOfLines = 0
            textViewPlaceHolderLabel.sizeToFit()
            textViewPlaceHolderLabel.frame.origin = CGPoint(x: 5, y: (ingredientTextView.font?.pointSize)! / 2)
            textViewPlaceHolderLabel.textColor = UIColor.lightGray
            textViewPlaceHolderLabel.isHidden = !ingredientTextView.text.isEmpty

        }
    }
    
    @IBOutlet weak var analyzeButton: UIButton!
    
    @IBOutlet weak var ingredientTextView: UITextView!{
        didSet{
            ingredientTextView.delegate = self
            ingredientTextView.layer.borderColor = UIColor.lightGray.cgColor
            ingredientTextView.layer.borderWidth = 0.3
            ingredientTextView.layer.cornerRadius = 4
            textViewPlaceHolderLabel = UILabel()
            ingredientTextView.addSubview(textViewPlaceHolderLabel)
            analyzeButton.isEnabled = !ingredientTextView.text.isEmpty
            analyzeButton.alpha =  !ingredientTextView.text.isEmpty ? 1.0 : 0.5
        }
    }
    
    
    //MARK: - -
    override func viewDidLoad() {
        super.viewDidLoad()
        observers()
    }
    
    
    //MARK: - -
    @IBAction func analyze(_ sender: Any) {
        self.getNutritionData()
    }
    
    //MARK: - -
    //MARK: - -
    func getNutritionData()
    {
        ingredientModel.getNutritionData(ingr: ingredientTextView.text)
    }
    
    //MARK: - -
    func observers() {
        //
        ingredientModel.isLoaded.subscribe(onNext: { [weak self](bool) in
                guard let viewModel = self?.ingredientModel else {return}
                let analysisViewController =  IngredientAnalysisViewController(viewModel: viewModel)
            self?.navigationController?.pushViewController(analysisViewController, animated: true)
        }).disposed(by: dispose)
        //
    }
    
}

extension IngredientListViewController : UITextViewDelegate {
    
    func textViewDidChange(_ textView: UITextView) {
        textViewPlaceHolderLabel.isHidden = !textView.text.isEmpty
        analyzeButton.isEnabled = !ingredientTextView.text.isEmpty
        analyzeButton.alpha =  !ingredientTextView.text.isEmpty ? 1.0 : 0.5
    }
}
