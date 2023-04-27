//
//  MovieData.swift
//  Ponnam_Movies
//
//  Created by PONNAM JAGADEESH on 27/04/23.
//

import UIKit

class MoviesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageOL: UIImageView!
    
    func assignMovie(movie: Movie){
            imageOL.image = movie.image
        }
}
