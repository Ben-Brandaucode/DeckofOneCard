//
//  CardViewController.swift
//  DeckOfOneCard32
//
//  Created by Ben Brandau Brandau on 3/10/20.
//  Copyright © 2020 Ben Brandau. All rights reserved.
//

import UIKit

class CardViewController: UIViewController {

    @IBOutlet weak var cardName: UILabel!
    @IBOutlet weak var cardImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    

    @IBAction func DrawButtonTapped(_ sender: Any) {
        CardController.fetchCard{ [weak self] (result) in
            DispatchQueue.main.async {
                switch result{
                case .success(let card):
                     self?.fetchImageAndUpdateViews(with: card)
                    
                case .failure(let error):
                    self?.presentErrorToUser(localizedError: error)
                }
            }
        
        }
    }
  func fetchImageAndUpdateViews(with card: Card) {

      CardController.fetchImage(for: card) { [weak self] result in
        DispatchQueue.main.async {
     
      switch result {
          case .success(let image):
            self?.cardName.text = "\(card.value) of \(card.suit)"
            self?.cardImage.image = image
          case .failure(let error):
            self?.presentErrorToUser(localizedError: error)
          }
      }
  }
        
        
        
}
}
