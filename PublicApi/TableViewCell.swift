//
//  TableViewCell.swift
//  PublicApi
//
//  Created by Aslan  on 15.12.2024.
//

import UIKit
import SDWebImage

class TableViewCell: UITableViewCell {
    @IBOutlet weak var urlImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var episodesLabel: UILabel!
    
    @IBOutlet weak var yearLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    func setData(anime: Anime){
        titleLabel.text = anime.title
        episodesLabel.text = anime.episodes
        urlImageView.sd_setImage(with: URL(string: anime.image_url))
        yearLabel.text = anime.status
    }
}
