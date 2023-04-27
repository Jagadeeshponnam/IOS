//
//  MovieData.swift
//  Ponnam_Movies
//
//  Created by PONNAM JAGADEESH on 27/04/23.
//

import Foundation
import UIKit

struct Movies
{
    var title:String
    var image:UIImage
    var releasedYear:String
    var movieRating:String
    var boxOffice:Stringz
    var moviePlot:String
    var cast:[String] = []
    
}

struct Genre
{
    var category : String
    var movies : [Movies]
}

let movie1 = Genre(category: "Drama", movies:
                [Movies(title: "Balagam", image:UIImage(named: "Balagam")!, releasedYear: "2023", movieRating: "9", boxOffice: "68.3M", moviePlot: "Sanjay loves Indu, daughter of a police officer who does not approve their alliance", cast: ["Priyadharsini"]),
                 Movies(title: "Hit", image:UIImage(named: "Hit")!, releasedYear: "2007", movieRating: "4", boxOffice: "3.4M", moviePlot: "Jagadam transl. Quarrelis a 2007 Indian Telugu-language action film written and esrxtjkuiz
                        :i éabv&f n,directed by Sukumar.", cast: ["Pavan Kalyan"]),
                 Movie(title: "RRR", image:UIImage(named: "RRR")!, releasedYear: "2022", movieRating: "8", boxOffice: "57.3M", moviePlot: "A tale of two legendary revolutionaries and their journey far away from home", cast: ["RamCharan and NTR"]),
                 Movie(title: "Dasara", image:UIImage(named: "Dasara")!, releasedYear: "2023", movieRating: "8.5", boxOffice: "58.3M", moviePlot: "The villagers always consume alcohol and get entangled with family problems. He spends most of his time with his best friends Siddham SuriSuryam and Vennela", cast: ["Nani and KeerthiSuresh"]),
                 Movie(title: "Uppena", image:UIImage(named: "Uppena")!, releasedYear: "2006", movieRating: "10", boxOffice: "4.3M", moviePlot: "Siddhu's overprotective father decides to get him married to a rich girl", cast: ["Siddharth"])])

let movie2 = Genre(category: "Horror", movies:
                [Movie(title: "Nightmare on Elm Street", image:UIImage(named: "Nightmare on Elm Street")!, releasedYear: "1984", movieRating: "8", boxOffice: "57.3M", moviePlot: "A demonic monster that kills people in their dreams", cast: ["Robert Englund"]),
                 Movie(title: "The Conjuring", image:UIImage(named: "The Conjuring")!, releasedYear: "2013", movieRating: "9", boxOffice: "318M", moviePlot: "Paranormal investigators Ed and Lorraine Warren work to help a family terrorized by a dark presence in their farmhouse", cast: ["Patrick Wilson", "Vera Farmiga"]),
                 Movie(title: "The Shining", image:UIImage(named: "The Shining")!, releasedYear: "1980", movieRating: "9", boxOffice: "47M", moviePlot: "A family heads to an isolated hotel for the winter where a sinister presence influences the father into violence", cast: ["Jack Nicholson", "Shelley Duvall"]),
                 Movie(title: "Hereditary", image:UIImage(named: "Hereditary")!, releasedYear: "2018", movieRating: "8", boxOffice: "79.3M", moviePlot: "A family's serene lives are disturbed when a demon begins to torment their daughter, and mother's horrific family secrets are gradually revealed.", cast: ["Toni Collette"]),
                 Movie(title: "Scream", image:UIImage(named: "Scream")!, releasedYear: "1996", movieRating: "10", boxOffice: "173M", moviePlot: "A killer known as Ghostface begins killing off teenagers, and as the body count begins rising, one girl and her friends find themselves contemplating the 'rules' of horror films as they find themselves living in a real-life one.", cast: ["Neve Campbell", "Courteney Cox"])])



let movie3 = Genre(category: "Documentary", movies:
                [Movie(title: "Sachin: A Billion Dreams", image:UIImage(named: "Sachin: A Billion Dreams")!, releasedYear: "2017", movieRating: "8", boxOffice: "1.85B", moviePlot: "A biographical film on the life of Indian cricketer Sachin Tendulkar", cast: ["Sachin Tendulkar"]),
                Movie(title: "Pelli Choopulu", image:UIImage(named: "Pelli Choopulu")!, releasedYear: "2016", movieRating: "9", boxOffice: "500M", moviePlot: "A romantic-comedy film about a young man and woman who accidentally meet and start a food truck business together", cast: ["Vijay Deverakonda", "Ritu Varma"]),
                Movie(title: "Maharshi", image:UIImage(named: "Maharshi")!, releasedYear: "2019", movieRating: "9", boxOffice: "2.4B", moviePlot: "A social drama film about a successful businessman who returns to his village and becomes a farmer", cast: ["Mahesh Babu"]),
                Movie(title: "Baahubali: The Beginning", image:UIImage(named: "Baahubali")!, releasedYear: "2015", movieRating: "9", boxOffice: "1.8B", moviePlot: "A historical-fiction film about a young man who discovers his true identity and fights to reclaim his kingdom", cast: ["Prabhas", "Rana Daggubati", "Anushka Shetty"]),
                Movie(title: "Jersey", image:UIImage(named: "Jersey")!, releasedYear: "2019", movieRating: "8", boxOffice: "1.85B", moviePlot: "A sports drama film about a failed cricketer who tries to make a comeback in his thirties", cast:["Nani", "Shraddha Srinath"])])

var movies = [movie1,movie2,movie3]
               
                                               
                                               
                                              
