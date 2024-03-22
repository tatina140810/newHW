import UIKit
import SnapKit

class SuccessVC: UIViewController {
    
    private lazy var congrateImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(resource: .success)
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    private lazy var titleLabel: UILabel = {
        let view = UILabel()
        view.text = "Success'"
        view.font = UIFont.systemFont(ofSize: 23, weight: .bold)
        view.textColor = .white
        view.textAlignment = .left
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor =  UIColor(hex: "047494")
        
        setupUI()
    }
    
    private func setupUI() {
        view.addSubview(congrateImage)
        congrateImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.height.equalTo(184)
            make.width.equalTo(184)
        }
        view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(congrateImage.snp.bottom).offset(30)
        }
    }
    
}
