//
//  MyCell.swift
//  TableviewCellOnImgv
//
//  Created by 梁雅軒 on 2017/9/30.
//  Copyright © 2017年 zoaks. All rights reserved.
//

import UIKit

class MyCell: UITableViewCell {

    @IBOutlet weak var imgv: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setImageName(imageName:String) {
        if var image = UIImage(named: imageName) {
            if image.size.width > image.size.height {
                image = scaleImage(image: image, size: CGSize(width: UIScreen.main.bounds.size.width , height: UIScreen.main.bounds.size.width * image.size.height / image.size.width))
                imgv.image = image
            }else{
                imgv.image = image
            }
        }
    }
    
    func scaleImage(image:UIImage, size:CGSize) -> UIImage {
        UIGraphicsBeginImageContext(size)
        image.draw(in: CGRect(origin: .zero, size: size))
        let scaledImage:UIImage = UIGraphicsGetImageFromCurrentImageContext()!;
        UIGraphicsEndImageContext();
        return scaledImage;
    }
}
