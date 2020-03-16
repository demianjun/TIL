//
//  ViewController.swift
//  200106_ImagePickerPractice
//
//  Created by Demian on 2020/01/06.
//  Copyright © 2020 Demian. All rights reserved.
//

import UIKit
import MobileCoreServices

class ViewController: UIViewController {

//    weak var imageView: UIImageView?
    private let imagePicker = UIImagePickerController()
    var imageView = UIImageView()
    let 앨범 = UIButton()
    let 카메라 = UIButton()
    let Delay촬영 = UIButton()
    let 동영상 = UIButton()
    let editing변경 = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(앨범)
        view.addSubview(카메라)
        view.addSubview(Delay촬영)
        view.addSubview(동영상)
        view.addSubview(editing변경)
        view.addSubview(imageView)
        imagePicker.delegate = self
        setButtonUI()

    }
    
    private func setButtonUI() {
        
        let standardView = view.safeAreaLayoutGuide
        
        앨범.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            앨범.topAnchor.constraint(equalTo: standardView.topAnchor, constant: 5),
            앨범.leadingAnchor.constraint(equalTo: standardView.leadingAnchor, constant: 12)
        ])
        앨범.setTitle("앨범", for: .normal)
        앨범.setTitleColor(.black, for: .normal)
        앨범.titleLabel?.font = .systemFont(ofSize: 18.5)
        앨범.addTarget(self, action: #selector(pickImage(_:)), for: .touchUpInside)
        
        카메라.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            카메라.topAnchor.constraint(equalTo: 앨범.topAnchor),
            카메라.leadingAnchor.constraint(equalTo: 앨범.trailingAnchor, constant: 10)
        ])
        카메라.setTitle("카메라", for: .normal)
        카메라.setTitleColor(.black, for: .normal)
        카메라.titleLabel?.font = .systemFont(ofSize: 18.5)
        카메라.addTarget(self, action: #selector(takePicture(_:)), for: .touchUpInside)
        
        Delay촬영.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            Delay촬영.topAnchor.constraint(equalTo: 앨범.topAnchor),
            Delay촬영.leadingAnchor.constraint(equalTo: 카메라.trailingAnchor, constant: 10)
        ])
        Delay촬영.setTitle("Delay촬영", for: .normal)
        Delay촬영.setTitleColor(.black, for: .normal)
        Delay촬영.titleLabel?.font = .systemFont(ofSize: 18.5)
        Delay촬영.addTarget(self, action: #selector(takePictureWithDelay(_:)), for: .touchUpInside)
        
        동영상.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            동영상.topAnchor.constraint(equalTo: 앨범.topAnchor),
            동영상.leadingAnchor.constraint(equalTo: Delay촬영.trailingAnchor, constant: 10)
        ])
        동영상.setTitle("동영상", for: .normal)
        동영상.setTitleColor(.black, for: .normal)
        동영상.titleLabel?.font = .systemFont(ofSize: 18.5)
        동영상.addTarget(self, action: #selector(recordingVideo(_:)), for: .touchUpInside)
        
        editing변경.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            editing변경.topAnchor.constraint(equalTo: 앨범.topAnchor),
            editing변경.leadingAnchor.constraint(equalTo: 동영상.trailingAnchor, constant: 10)
        ])
        editing변경.setTitleColor(.black, for: .normal)
        editing변경.setTitle("Editting변경", for: .normal)
        editing변경.titleLabel?.font = .systemFont(ofSize: 18.5)
        editing변경.addTarget(self, action: #selector(toggleAllowsEditing(_:)), for: .touchUpInside)

        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.centerYAnchor.constraint(equalTo: standardView.centerYAnchor),
            imageView.leadingAnchor.constraint(equalTo: standardView.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: standardView.trailingAnchor)
            
        ])
        imageView.image = UIImage(named: "emtyImage")
        imageView.contentMode = .scaleAspectFit
        
    }
        
    @ objc private func pickImage(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true)
    }
    
    @ objc private func takePicture(_ sender: Any) {
        guard UIImagePickerController.isSourceTypeAvailable(.camera) else {return}
        imagePicker.sourceType = .camera
        
        let mediaTypes = UIImagePickerController.availableMediaTypes(for: .camera)
        imagePicker.mediaTypes = mediaTypes ?? []
        imagePicker.mediaTypes = [kUTTypeImage, kUTTypeMovie] as [String]
        
        present(imagePicker, animated: true)
    }
    
    @ objc private func takePictureWithDelay(_ sender: Any) {
        guard UIImagePickerController.isSourceTypeAvailable(.camera) else {return}
        imagePicker.sourceType = .camera
        imagePicker.mediaTypes = [kUTTypeImage, kUTTypeMovie] as [String]
        
        present(imagePicker, animated: true) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
                self.imagePicker.takePicture()
            })
        }
    }
    
    @ objc private func recordingVideo(_ sender: Any) {
        guard UIImagePickerController.isSourceTypeAvailable(.camera) else {return}
        imagePicker.sourceType = .camera
        imagePicker.mediaTypes = [kUTTypeImage, kUTTypeMovie] as [String]
        
        imagePicker.cameraCaptureMode = .video
        imagePicker.videoQuality = .typeHigh
        
        present(imagePicker, animated: true)
    }
    
    @ objc private func toggleAllowsEditing(_ sender: Any) {
        imagePicker.allowsEditing.toggle()
    }
}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let mediaType = info[.mediaType] as! NSString
        if UTTypeEqual(mediaType, kUTTypeImage) {
            let originImage = info[.originalImage] as! UIImage
            let editedImgae = info[.editedImage] as? UIImage
            let selectedImage = editedImgae ?? originImage
            imageView.image = selectedImage
            
            if picker.sourceType == .camera {
                UIImageWriteToSavedPhotosAlbum(selectedImage, nil, nil, nil)
            }
        } else if UTTypeEqual(mediaType, kUTTypeMovie) {
            if let mediaPath = (info[.mediaURL] as? NSURL)?.path, UIVideoAtPathIsCompatibleWithSavedPhotosAlbum(mediaPath) {
                if picker.sourceType == .camera {
                    UISaveVideoAtPathToSavedPhotosAlbum(mediaPath, nil, nil, nil)
                }
            }
        }
        picker.dismiss(animated: true)
    }
}
