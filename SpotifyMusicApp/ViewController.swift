//
//  ViewController.swift
//  SpotifyMusicApp
//
//  Created by Reuben Simphiwe Kuse on 2024/06/19.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var albumCoverImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "album_cover")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
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
    
    lazy var playPauseButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "play_icon"), for: .normal)
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var shuffleButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "shuffle_icon"), for: .normal)
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var previousButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "previous_icon"), for: .normal)
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "next_icon"), for: .normal)
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    lazy var addButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "add_icon"), for: .normal)
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var timerButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "timer_icon"), for: .normal)
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var shareButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "share_icon"), for: .normal)
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var durationSlider: UISlider = {
        let slider = UISlider()
        slider.minimumTrackTintColor = .white
        slider.maximumTrackTintColor = .gray
        slider.translatesAutoresizingMaskIntoConstraints = false
        return slider
    }()
    
    lazy var currentTimeLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = "0:04"
        label.font = UIFont.systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var durationLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = "4:13"
        label.font = UIFont.systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var deviceButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "device_icon"), for: .normal)
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var playlistLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = "In the Mood for Jazz"
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var downArrowButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "down_arrow_icon"), for: .normal)
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var moreOptionsButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "more_options_icon"), for: .normal)
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black 
        setupUI()
    }
    
    func setupUI() {
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
        view.addSubview(addButton)
        view.addSubview(deviceButton)
        view.addSubview(playlistLabel)
        view.addSubview(downArrowButton)
        view.addSubview(moreOptionsButton)
        view.addSubview(timerButton)
        view.addSubview(shareButton)
        
        downArrowButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        downArrowButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        downArrowButton.widthAnchor.constraint(equalToConstant: 24).isActive = true
        downArrowButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
            
        playlistLabel.centerYAnchor.constraint(equalTo: downArrowButton.centerYAnchor).isActive = true
        playlistLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        moreOptionsButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        moreOptionsButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        moreOptionsButton.widthAnchor.constraint(equalToConstant: 24).isActive = true
        moreOptionsButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
            
        albumCoverImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        albumCoverImageView.topAnchor.constraint(equalTo: downArrowButton.bottomAnchor, constant: 20).isActive = true
        albumCoverImageView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        albumCoverImageView.heightAnchor.constraint(equalToConstant: 300).isActive = true
            
        songTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        songTitleLabel.topAnchor.constraint(equalTo: albumCoverImageView.bottomAnchor, constant: 20).isActive = true
            
        artistLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        artistLabel.topAnchor.constraint(equalTo: songTitleLabel.bottomAnchor, constant: 8).isActive = true
            
        durationSlider.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        durationSlider.topAnchor.constraint(equalTo: artistLabel.bottomAnchor, constant: 20).isActive = true
        durationSlider.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        durationSlider.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
            
        currentTimeLabel.leadingAnchor.constraint(equalTo: durationSlider.leadingAnchor).isActive = true
        currentTimeLabel.topAnchor.constraint(equalTo: durationSlider.bottomAnchor, constant: 8).isActive = true
        
        durationLabel.trailingAnchor.constraint(equalTo: durationSlider.trailingAnchor).isActive = true
        durationLabel.topAnchor.constraint(equalTo: durationSlider.bottomAnchor, constant: 8).isActive = true
            
        shuffleButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        shuffleButton.topAnchor.constraint(equalTo: currentTimeLabel.bottomAnchor, constant: 20).isActive = true
        shuffleButton.widthAnchor.constraint(equalToConstant: 24).isActive = true
        shuffleButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
            
        previousButton.leadingAnchor.constraint(equalTo: shuffleButton.trailingAnchor, constant: 20).isActive = true
        previousButton.centerYAnchor.constraint(equalTo: shuffleButton.centerYAnchor).isActive = true
        previousButton.widthAnchor.constraint(equalToConstant: 24).isActive = true
        previousButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
            
        playPauseButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        playPauseButton.centerYAnchor.constraint(equalTo: shuffleButton.centerYAnchor).isActive = true
        playPauseButton.widthAnchor.constraint(equalToConstant: 32).isActive = true
        playPauseButton.heightAnchor.constraint(equalToConstant: 32).isActive = true
            
        nextButton.leadingAnchor.constraint(equalTo: playPauseButton.trailingAnchor, constant: 20).isActive = true
        nextButton.centerYAnchor.constraint(equalTo: playPauseButton.centerYAnchor).isActive = true
        nextButton.widthAnchor.constraint(equalToConstant: 24).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
            
        addButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        addButton.centerYAnchor.constraint(equalTo: playPauseButton.centerYAnchor).isActive = true
        addButton.widthAnchor.constraint(equalToConstant: 24).isActive = true
        addButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
            
        timerButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        timerButton.topAnchor.constraint(equalTo: addButton.bottomAnchor, constant: 20).isActive = true
        timerButton.widthAnchor.constraint(equalToConstant: 24).isActive = true
        timerButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
            
        shareButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        shareButton.topAnchor.constraint(equalTo: timerButton.bottomAnchor, constant: 20).isActive = true
        shareButton.widthAnchor.constraint(equalToConstant: 24).isActive = true
        shareButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
            
        deviceButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        deviceButton.topAnchor.constraint(equalTo: shuffleButton.bottomAnchor, constant: 20).isActive = true
        deviceButton.widthAnchor.constraint(equalToConstant: 24).isActive = true
        deviceButton.heightAnchor.constraint(equalToConstant: 24).isActive = true

    }
}
