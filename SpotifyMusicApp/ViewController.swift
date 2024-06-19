//
//  ViewController.swift
//  SpotifyMusicApp
//
//  Created by Reuben Simphiwe Kuse on 2024/06/19.
//

import UIKit

class ViewController: UIViewController {
    var isPlaying = false
    
        lazy var albumCoverImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "album_cover")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 5
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
    
    lazy var songAndArtistTitleStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [songTitleLabel, artistLabel])
        stackView.distribution = .fillProportionally
        stackView.axis = .vertical
        stackView.spacing = 5
        stackView.alignment = .leading
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
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
    
    lazy var playPauseButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "play_icon"), for: .normal)
        button.tintColor = .white
        button.addTarget(self, action: #selector(playPauseButtonTapped), for: .touchUpInside)
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
    
    lazy var shufflePlayRewindStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [shuffleButton, previousButton, playPauseButton, nextButton])
        stackView.distribution = .fillProportionally
        stackView.axis = .horizontal
        stackView.spacing = 50
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
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
        slider.maximumTrackTintColor = .lightGray
        //slider.setThumbImage(UIImage(), for: .normal)
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
        view.addSubview(songAndArtistTitleStackView)
        view.addSubview(playPauseButton)
        view.addSubview(shuffleButton)
        view.addSubview(previousButton)
        view.addSubview(nextButton)
        view.addSubview(shufflePlayRewindStackView)
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
        downArrowButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        downArrowButton.widthAnchor.constraint(equalToConstant: 24).isActive = true
        downArrowButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
        playlistLabel.centerYAnchor.constraint(equalTo: downArrowButton.centerYAnchor).isActive = true
        playlistLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        moreOptionsButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        moreOptionsButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        moreOptionsButton.widthAnchor.constraint(equalToConstant: 24).isActive = true
        moreOptionsButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
        albumCoverImageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        albumCoverImageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        albumCoverImageView.topAnchor.constraint(equalTo: downArrowButton.bottomAnchor, constant: 35).isActive = true
        albumCoverImageView.heightAnchor.constraint(equalToConstant: 350).isActive = true
        
        songAndArtistTitleStackView.topAnchor.constraint(equalTo: albumCoverImageView.bottomAnchor, constant: 40).isActive = true
        songAndArtistTitleStackView.leftAnchor.constraint(equalTo: durationSlider.leftAnchor).isActive = true
            
        addButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        addButton.centerYAnchor.constraint(equalTo: songAndArtistTitleStackView.centerYAnchor).isActive = true
        addButton.widthAnchor.constraint(equalToConstant: 24).isActive = true
        addButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
        durationSlider.topAnchor.constraint(equalTo: songAndArtistTitleStackView.bottomAnchor, constant: 20).isActive = true
        durationSlider.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        durationSlider.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        currentTimeLabel.leftAnchor.constraint(equalTo: durationSlider.leftAnchor).isActive = true
        currentTimeLabel.topAnchor.constraint(equalTo: durationSlider.bottomAnchor, constant: 2).isActive = true
        
        durationLabel.rightAnchor.constraint(equalTo: durationSlider.rightAnchor).isActive = true
        durationLabel.topAnchor.constraint(equalTo: durationSlider.bottomAnchor, constant: 2).isActive = true
        
        shufflePlayRewindStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        shufflePlayRewindStackView.topAnchor.constraint(equalTo: currentTimeLabel.bottomAnchor, constant: 20).isActive = true
        
        timerButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        timerButton.centerYAnchor.constraint(equalTo: shufflePlayRewindStackView.centerYAnchor).isActive = true
        timerButton.widthAnchor.constraint(equalToConstant: 40).isActive = true
        timerButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        shuffleButton.widthAnchor.constraint(equalToConstant: 20).isActive = true
        shuffleButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        previousButton.widthAnchor.constraint(equalToConstant: 25).isActive = true
        previousButton.heightAnchor.constraint(equalToConstant: 25).isActive = true

        playPauseButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        playPauseButton.heightAnchor.constraint(equalToConstant: 50).isActive = true

        nextButton.widthAnchor.constraint(equalToConstant: 25).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        deviceButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        deviceButton.topAnchor.constraint(equalTo: shufflePlayRewindStackView.bottomAnchor, constant: 20).isActive = true
        deviceButton.widthAnchor.constraint(equalToConstant: 25).isActive = true
        deviceButton.heightAnchor.constraint(equalToConstant: 25).isActive = true
            
        shareButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        shareButton.topAnchor.constraint(equalTo: timerButton.bottomAnchor, constant: 20).isActive = true
        shareButton.widthAnchor.constraint(equalToConstant: 45).isActive = true
        shareButton.heightAnchor.constraint(equalToConstant: 45).isActive = true
            
    }
    
    @objc func playPauseButtonTapped() {
        isPlaying.toggle()
        let buttonImage = isPlaying ? UIImage(named: "pause_icon") : UIImage(named: "play_icon")
        playPauseButton.setImage(buttonImage, for: .normal)
    }
}
