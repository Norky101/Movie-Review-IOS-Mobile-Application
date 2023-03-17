//
//  DetailViewController.swift
//  Project2
//
//  Created by Noah Pilkington on 3/6/23.
//

import Foundation
import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var overviewTextLabel: UILabel!
    @IBOutlet weak var posterImageLabel: UIImageView!
    @IBOutlet weak var vote_countLabel: UILabel!
    @IBOutlet weak var vote_averageLabel: UILabel!
    @IBOutlet weak var popularityLabel: UILabel!

    // TODO: Pt 1 - Add a track property

    // A property to store the track object.
    // We can set this property by passing along the track object associated with the track the user tapped in the table view.
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // TODO: Pt 1 - Configure the UI elements with the passed in movie
        
        //Nuke.loadImage(with: movie.poster_path, into: posterImageLabel)

            // Set labels with the associated track JSON values.
        movieNameLabel.text = movie.original_title
        overviewTextLabel.text = movie.overview
        vote_countLabel.text = "Vote Count " + String (movie.vote_count ); // converted to a string
        vote_averageLabel.text = "Vote Average " + String (movie.vote_average);   // converted to a string
        popularityLabel.text = "Popularity " + String (movie.popularity);     // converted to a string
        let imageURL = URL(string:"https://image.tmdb.org/t/p/w500\(movie.poster_path.absoluteString)")!
        Nuke.loadImage(with: imageURL, into: posterImageLabel)
    }

} //end of class
