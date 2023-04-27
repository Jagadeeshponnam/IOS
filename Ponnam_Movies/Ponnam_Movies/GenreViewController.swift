//
//  MovieData.swift
//  Ponnam_Movies
//
//  Created by PONNAM JAGADEESH on 27/04/23.
//

import UIKit

class GenreViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    var moviesArray = movies

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        var sectionCell = genreTableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
        sectionCell.textLabel?.text = movies[indexPath.row].category
        return sectionCell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "movieSegue"
        {
            let destination = segue.destination as! MoviesViewController
            destination.movie = moviesArray[(genreTableView.indexPathForSelectedRow?.row)!].movies
            
            destination.title = moviesArray[(genreTableView.indexPathForSelectedRow?.row)!].category
        }
    }


    @IBOutlet weak var genreTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        genreTableView.delegate = self
        genreTableView.dataSource = self
    }

}

