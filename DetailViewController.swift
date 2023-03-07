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

//    @IBOutlet weak var trackImageView: UIImageView!
//    @IBOutlet weak var trackNameLabel: UILabel!
//
//    @IBOutlet weak var artistLabel: UILabel!
//    @IBOutlet weak var albumLabel: UILabel!
//    @IBOutlet weak var genreLabel: UILabel!
//    @IBOutlet weak var releaseDateLabel: UILabel!
//    @IBOutlet weak var durationLabel: UILabel!

    // TODO: Pt 1 - Add a track property

    // A property to store the track object.
    // We can set this property by passing along the track object associated with the track the user tapped in the table view.
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // TODO: Pt 1 - Configure the UI elements with the passed in track
        // Load the image located at the `artworkUrl100` URL and set it on the image view.
        Nuke.loadImage(with: movie.poster_path, into: posterLabel)

            // Set labels with the associated track values.
            movieLabel.text = Movie.original_title
            
            overviewLabel.text = Movie.movie.overview
           
            posterLabel.URL = Movie.poster_path  //maybe .text

            // Create a date formatter to style our date and convert it to a string
//            let dateFormatter = DateFormatter()
//            dateFormatter.dateStyle = .medium
//            releaseDateLabel.text = dateFormatter.string(from: track.releaseDate)

            // Use helper method to convert milliseconds into `mm:ss` string format
//            durationLabel.text = formattedTrackDuration(with: track.trackTimeMillis)

    }



}
