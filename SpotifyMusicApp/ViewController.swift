//
//  ViewController.swift
//  SpotifyMusicApp
//
//  Created by Reuben Simphiwe Kuse on 2024/06/19.
//

import UIKit

class ViewController: UIViewController {
    
    // Album cover image view
    lazy var albumCoverImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "album_cover") // Replace with your image name
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    // Song title label
    lazy var songTitleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = "The Masquerade Is Over"
        label.numberOfLines = 1
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // Artist label
    lazy var artistLabel: UILabel = {
        let label = UILabel()
        label.textColor = .lightGray
        label.text = "Nancy Wilson, Cannonball Adderley"
        label.numberOfLines = 1
        label.font = UIFont.systemFont(ofSize: 14)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // Play/Pause button
    lazy var playPauseButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "play_icon"), for: .normal) // Replace with your play icon
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // Shuffle button
    lazy var shuffleButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "shuffle_icon"), for: .normal) // Replace with your shuffle icon
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // Previous button
    lazy var previousButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "previous_icon"), for: .normal) // Replace with your previous icon
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // Next button
    lazy var nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "next_icon"), for: .normal) // Replace with your next icon
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // Duration slider
    lazy var durationSlider: UISlider = {
        let slider = UISlider()
        slider.minimumTrackTintColor = .white
        slider.maximumTrackTintColor = .gray
        slider.translatesAutoresizingMaskIntoConstraints = false
        return slider
    }()
    
    // Current time label
    lazy var currentTimeLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = "0:04"
        label.font = UIFont.systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // Duration label
    lazy var durationLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = "4:13"
        label.font = UIFont.systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black // Set background color to black
        
        // Add subviews
        view.addSubview(albumCoverImageView)
        view.addSubview(songTitleLabel)
        view.addSubview(artistLabel)
        view.addSubview(playPauseButton)
        view.addSubview(shuffleButton)
        view.addSubview(previousButton)
        view.addSubview(nextButton)
        view.addSubview(durationSlider)
        view.addSubview(currentTimeLabel)
        view.addSubview(durationLabel)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            albumCoverImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            albumCoverImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            albumCoverImageView.widthAnchor.constraint(equalToConstant: 300),
            albumCoverImageView.heightAnchor.constraint(equalToConstant: 300),
            
            songTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            songTitleLabel.topAnchor.constraint(equalTo: albumCoverImageView.bottomAnchor, constant: 20),
            
            artistLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            artistLabel.topAnchor.constraint(equalTo: songTitleLabel.bottomAnchor, constant: 8),
            
            durationSlider.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            durationSlider.topAnchor.constraint(equalTo: artistLabel.bottomAnchor, constant: 20),
            durationSlider.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            durationSlider.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            currentTimeLabel.leadingAnchor.constraint(equalTo: durationSlider.leadingAnchor),
            currentTimeLabel.topAnchor.constraint(equalTo: durationSlider.bottomAnchor, constant: 8),
            
            durationLabel.trailingAnchor.constraint(equalTo: durationSlider.trailingAnchor),
            durationLabel.topAnchor.constraint(equalTo: durationSlider.bottomAnchor, constant: 8),
            
            shuffleButton.leadingAnchor.constraint(equalTo: durationSlider.leadingAnchor),
            shuffleButton.topAnchor.constraint(equalTo: currentTimeLabel.bottomAnchor, constant: 20),
            
            previousButton.leadingAnchor.constraint(equalTo: shuffleButton.trailingAnchor, constant: 20),
            previousButton.centerYAnchor.constraint(equalTo: shuffleButton.centerYAnchor),
            
            playPauseButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            playPauseButton.centerYAnchor.constraint(equalTo: previousButton.centerYAnchor),
            
            nextButton.trailingAnchor.constraint(equalTo: durationSlider.trailingAnchor),
            nextButton.centerYAnchor.constraint(equalTo: playPauseButton.centerYAnchor)
        ])
    }
}
