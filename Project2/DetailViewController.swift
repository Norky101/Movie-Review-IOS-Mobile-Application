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
        
        Nuke.loadImage(with: movie.poster_path, into: posterImageLabel)

            // Set labels with the associated track JSON values.
        movieNameLabel.text = movie.original_title
        overviewTextLabel.text = movie.overview
        vote_countLabel.text = movie.vote_count + " Vote Count"
        vote_averageLabel.text = movie.vote_average + " Vote Average"
        popularityLabel.text = movie.popularity + " Popularity"
           

        
    }



}
