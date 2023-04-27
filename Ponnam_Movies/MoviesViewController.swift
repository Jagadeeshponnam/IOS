//
//  MovieData.swift
//  Ponnam_Movies
//
//  Created by PONNAM JAGADEESH on 27/04/23.
//

import UIKit

class MoviesViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource{
    
    @IBOutlet weak var movieCollectionView: UICollectionView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieRatingLabel: UILabel!
    @IBOutlet weak var movieBoxOfficeLabel: UILabel!
    @IBOutlet weak var movieYearLabel: UILabel!
    @IBOutlet weak var moviePlotLabel: UILabel!
    @IBOutlet weak var movieCastLabel: UILabel!
    
    var movie :[Movie] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        movieCollectionView.delegate = self
        movieCollectionView.dataSource = self
        
        movieNameLabel.text = "Movie Name: \(movie [0].title)"
        movieRatingLabel.text = "Movie Rating: \(movie [0].movieRating)"
        movieBoxOfficeLabel.text = "Box Office Collection: \(movie [0].boxOffice)"
        movieYearLabel.text = "Movie Released Year: \(movie [0].releasedYear)"
        moviePlotLabel.text = "Plot: \r\(movie [0].moviePlot)"
        movieCastLabel.text = "Cast: \n\r\(movie [0].cast.joined(separator: ", "))"
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movie .count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let movieCell = movieCollectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MoviesCollectionViewCell
        movieCell.assignMovie(movie: movie[indexPath.row])
        return movieCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        movieNameLabel.text = "Movie Name: \(movie [indexPath.row].title)"
        movieRatingLabel.text = "Movie Rating: \(movie [indexPath.row].movieRating)"
        movieBoxOfficeLabel.text = "Box Office Collection: \(movie [indexPath.row].boxOffice)"
        movieYearLabel.text = "Movie Released Year: \(movie [indexPath.row].releasedYear)"
        moviePlotLabel.text = "Plot: \r\(movie [indexPath.row].moviePlot)"
        movieCastLabel.text = "Cast: \n\r\(movie [indexPath.row].cast.joined(separator: ", "))"
    }
}
