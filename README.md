# SwiftUI-reel-stories
Création de UI de stories et Réels

## A ajouter lors de la création de l'application pour pouvoir suivre la vidéo sur Youtube:

//
// TestDatas.swift
// Reel&Stories
//
// Created by matthieu passerel on 21/12/2023.
//

import Foundation

//Photos de profil
let pict1 = "https://d1yei2z3i6k35z.cloudfront.net/5092652/65548cdf1f586_codabee_logo_red.png"
let pict2 = "https://images.pexels.com/photos/8832540/pexels-photo-8832540.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
let pict3 = "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
let pict4 = "https://images.unsplash.com/photo-1551884831-bbf3cdc6469e?q=80&w=1948&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
let pict5 = "https://images.unsplash.com/photo-1518020382113-a7e8fc38eac9?q=80&w=2034&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
let pict6 = "https://images.unsplash.com/photo-1580489944761-15a19d654956?q=80&w=1961&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
let pict7 = "https://images.unsplash.com/photo-1568602471122-7832951cc4c5?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"

//Images
let img1 = "https://images.unsplash.com/photo-1700413473936-81b281f88715?q=80&w=1972&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
let img2 = "https://images.unsplash.com/photo-1700573941847-d42179081698?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
let img3 = "https://images.unsplash.com/photo-1699269266070-97882aaf9fec?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
let img4 = "https://images.unsplash.com/photo-1682687981603-ae874bf432f2?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"

//Gif
let gif1 = "https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExdHl1NzZ6amU3bGRwd2xybm5kaDJ6NnY5eGY2azgzNjh4aWlhNzFvbiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/LzwcNOrbA3aYvXK6r7/giphy.gif"
let gif2 = "https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExYTZ4bTFtbmpjbjEwNzFtc28yY2JkOW1uNGZ4ZmhzMzJ5Y3RzeDNhcCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/R6gvnAxj2ISzJdbA63/giphy-downsized-large.gif"
let gif3 = "https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExNWcxdW9tdmkyZ3Z5cThlY3Y1YnJ6dG13MTBubzFjYzAwenFhNzRpbyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/cL4pqu8GGRIihabgSM/giphy.gif"

//Video
let vid1 = "https://blog.codabee.com/wp-content/uploads/2023/12/170272-540p.mp4"
let vid2 = "https://blog.codabee.com/wp-content/uploads/2023/12/159557-720p.mp4"
let vid3 = "https://blog.codabee.com/wp-content/uploads/2023/12/181301-1080p.mp4"
let vid4 = "https://blog.codabee.com/wp-content/uploads/2023/12/125483-720p.mp4"
let vid5 = "https://blog.codabee.com/wp-content/uploads/2023/12/159703-720p.mp4"
let vid6 = "https://blog.codabee.com/wp-content/uploads/2023/12/waterfall_-_115537-720p.mp4"
let vid7 = "https://blog.codabee.com/wp-content/uploads/2023/12/170617-1080p.mp4"

//Liste des utilisateurs
let user1 = User(username: "Matt Codabee", imageUrl: pict1, stories: [story1])
let user2 = User(username: "Jenny", imageUrl: pict2, stories: [story2, story3])
let user3 = User(username: "Ben Howie", imageUrl: pict3, stories: [story4])
let user4 = User(username: "Poney Taylor", imageUrl: pict4, stories: [story5, story6, story7])
let user5 = User(username: "Richie McPaw", imageUrl: pict5, stories: [story8])
let user6 = User(username: "Bianca", imageUrl: pict6, stories: [story9, story10])
let user7 = User(username: "Patrick Bisby", imageUrl: pict7, stories: [story11])

//Stories
let story1 = Story(url: img1, type: MediaType.image, duration: 3)
let story2 = Story(url: gif1, type: MediaType.gif, duration: 4)
let story3 = Story(url: vid1, type: MediaType.video, duration: 5)
let story4 = Story(url: img2, type: MediaType.image, duration: 4)
let story5 = Story(url: vid2, type: MediaType.video, duration: 3)
let story6 = Story(url: img3, type: MediaType.image, duration: 2)
let story7 = Story(url: vid3, type: MediaType.video, duration: 5)
let story8 = Story(url: gif2, type: MediaType.gif, duration: 7)
let story9 = Story(url: gif3, type: MediaType.gif, duration: 5)
let story10 = Story(url: img4, type: MediaType.image, duration: 8)
let story11 = Story(url: vid4, type: MediaType.video, duration: 2)


//Réels
let reel1 = Reel(url: vid5, type: MediaType.video, duration: 0, user: user1)
let reel2 = Reel(url:vid6 , type: MediaType.video, duration: 0, user: user2)
let reel3 = Reel(url: vid7 ,type: MediaType.video, duration: 0, user: user3)

//Listes
let users: [User] = [user1, user2, user3, user4, user5, user6, user7]
let reels: [Reel] = [reel1, reel2, reel3]
