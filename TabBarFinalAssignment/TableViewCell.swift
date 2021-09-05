

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var image1: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configureCell(data : MyModel?) {
        guard let data1 = data else {
            return
        }
        label1.text = data1.name
        image1.image = UIImage(named: data1.image ?? "")
    }
}
