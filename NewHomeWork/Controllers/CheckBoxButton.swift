import UIKit

class CheckboxButton: UIButton {
    let checkedImage = UIImage(systemName: "checkmark.square.fill")
    let uncheckedImage = UIImage(systemName: "square")
    var isChecked = false {
        didSet {
            setImage(isChecked ? checkedImage : uncheckedImage, for: .normal)
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCheckbox()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupCheckbox()
    }

    private func setupCheckbox() {
        isChecked = false
        addTarget(self, action: #selector(checkBoxTapped), for: .touchUpInside)
    }

    @objc private func checkBoxTapped() {
        isChecked.toggle()
    }
}
