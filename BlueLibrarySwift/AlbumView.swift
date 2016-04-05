//
//  AlbumView.swift
//  BlueLibrarySwift
//
//  Created by Kokpheng Yin on 2016. 4. 5..
//  Copyright © 2016년 Raywenderlich. All rights reserved.
//

import UIKit

class AlbumView: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    private var coverImage: UIImageView!
    private var indicator: UIActivityIndicatorView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    init(frame: CGRect, albumCover: String) {
        super.init(frame: frame)
        commonInit()
    }
    
    func commonInit() {
        backgroundColor = UIColor.blueColor()
        coverImage = UIImageView(frame: CGRect(x: 5, y:5, width: frame.size.width - 10, height: frame.size.height - 10))
        addSubview(coverImage)
        indicator = UIActivityIndicatorView()
        indicator.center = center
        indicator.activityIndicatorViewStyle = .WhiteLarge
        indicator.startAnimating()
        addSubview(indicator)
    }
    
    func highlightAlbum(didHighlightView: Bool) {
        if didHighlightView == true {
            backgroundColor = UIColor.whiteColor()
        }else
        {
            backgroundColor = UIColor.blueColor()
        }
    }

}
