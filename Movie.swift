//
//  Movie.swift
//  Project2
//
//  Created by Noah Pilkington on 3/6/23.
//

import Foundation

// TODO: Pt 1 - Create a Movie model struct
struct Movie
    {
    let original_title: String
    let overview: String
    let vote_count: String
    let vote_average: String
    let popularity: String  //double?
    let poster_path: URL
    }


// TODO: Pt 1 - Create an extension with a mock movies static var
    extension Movie
{

    /// An array of mock tracks
    static var mockMovies: [Movie]  = [
        
        //Movie 1
       Movie( original_title: "Knock at the Cabin",
        overview: "While vacationing at a remote cabin, a young girl and her two fathers are taken hostage by four armed strangers who demand that the family make an unthinkable choice to avert the apocalypse. With limited access to the outside world, the family must decide what they believe before all is lost.",
        vote_count: "778",
        vote_average: "6.6",
        popularity: "4969",
        poster_path: URL(string:"https://image.tmdb.org/t/p/w500/dm06L9pxDOL9jNSK4Cb6y139rrG.jpg")!),
        
        // Movie 2
       Movie( original_title: "Black Panther: Wakanda Forever",
            overview: "Queen Ramonda, Shuri, Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of Kings death. As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda.",
        vote_count: "3823",
        vote_average: "7.4",
        popularity: "3502",
        poster_path: URL(string:"https://image.tmdb.org/t/p/w500/sv1xJUazXeYqALzczSZ3O6nkH75.jpg")!),
        
        // Movie 3
       Movie( original_title: "Puss in Boots: The Last Wish",
        overview: "Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.",
        vote_count:  "4277",
        vote_average: "8.4",
        popularity: "3278",
        poster_path: URL(string:"https://image.tmdb.org/t/p/w500/kuf6dutpsT0vSVehic3EZIqkOBt.jpg")!),
       
       // Movie 4
      Movie( original_title: "Creed III",
       overview: "After dominating the boxing world, Adonis Creed has been thriving in both his career and family life. When a childhood friend and former boxing prodigy, Damien Anderson, resurfaces after serving a long sentence in prison, he is eager to prove that he deserves his shot in the ring. The face-off between former friends is more than just a fight. To settle the score, Adonis must put his future on the line to battle Damien - a fighter who has nothing to lose.",
       vote_count:  "171",
       vote_average: "7.3",
       popularity: "1920",
       poster_path: URL(string:"https://image.tmdb.org/t/p/w500/cvsXj3I9Q2iyyIo95AecSd1tad7.jpg")!),
       
       // Movie 5
      Movie( original_title: "Plane",
       overview: "After a heroic job of successfully landing his storm-damaged aircraft in a war zone, a fearless pilot finds himself between the agendas of multiple militias planning to take the plane and its passengers hostage.",
       vote_count:  "785",
      vote_average: "6.9",
       popularity: "2068",
       poster_path: URL(string:"https://image.tmdb.org/t/p/w500/qi9r5xBgcc9KTxlOLjssEbDgO0J.jpg")!)
    ]

    // We can now access this array of mock movie anywhere like this:
    // let movies = Movie.mockMovies
}
