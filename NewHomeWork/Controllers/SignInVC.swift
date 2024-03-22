import UIKit
import SnapKit

class SignInVC: UIViewController {
    
    private lazy var childImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(resource: .child)
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    private lazy var titleLabel: UILabel = {
        let view = UILabel()
        view.text = "Welcome Back"
        view.font = UIFont.systemFont(ofSize: 34, weight: .bold)
        view.textColor = .white
        view.textAlignment = .left
        return view
    }()
    
    private lazy var subtitleLabel: UILabel = {
        let view = UILabel()
        view.text = "Sign in to continue"
        view.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        view.textColor = .white
        view.textAlignment = .left
        return view
    }()
    
    private lazy var employeeLabel: UILabel = {
        let view = UILabel()
        view.text = "Employee Id / Email"
        view.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        view.textColor = UIColor(hex: "A5A5A5")
        view.textAlignment = .left
        return view
    }()
    
    private lazy var passwordLabel: UILabel = {
        let view = UILabel()
        view.text = "Password"
        view.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        view.textColor = UIColor(hex: "A5A5A5")
        view.textAlignment = .left
        return view
    }()
    
    private lazy var emailTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "   Enter e-mail"
        view.layer.borderWidth = 1.0 // Устанавливаем ширину рамки
        view.layer.cornerRadius = 12.0 // Округляем углы
        view.layer.borderColor = UIColor.lightGray.cgColor // Устанавливаем цвет рамки по умолчанию
        view.addTarget(self, action: #selector(signInBtnTapped), for: .editingChanged) // Добавляем обработчик изменения текста
        return view
    }()
    
    private lazy var passwordTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "   Password"
        return view
    }()
    
    private lazy var secureImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(systemName: "eye.fill")
        view.contentMode = .scaleAspectFill
        view.tintColor = . gray
        return view
    }()
    
    private lazy var lineView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hex: "A5A5A5")
        return view
    }()
    
    private lazy var secondLineView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hex: "A5A5A5")
        return view
    }()
    
    private lazy var forgotPasswordButton: UIButton = {
        let view = UIButton()
        view.setTitle("Forgot Password?", for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        view.setTitleColor(UIColor(hex: "4B94EA"), for: .normal)
        //view.addTarget(self, action: #selector(forgotBtnTapped), for: .touchUpInside)
        return view
    }()
    
    private lazy var checkBoxButton: UIButton = {
        let checkbox = CheckboxButton()
        checkbox.tintColor = .black
        checkbox.frame = CGRect(x: 50, y: 50, width: 30, height: 30)
        return checkbox
    }()
    
    private lazy var signInButton: UIButton = {
        let view = UIButton()
        view.setTitle("Sign In", for: .normal)
        view.backgroundColor = UIColor(hex: "2855AE")
        view.layer.cornerRadius = 20
        view.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        view.setTitleColor(UIColor(hex: "FFFFFF"), for: .normal)
        view.addTarget(self, action: #selector(signInBtnTapped), for: .touchUpInside)
        return view
    }()
    
    private lazy var rememberLabel: UILabel = {
        let view = UILabel()
        view.text = "Remember Me"
        view.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        view.textColor = .black
        return view
    }()
    
    private lazy var signInView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        view.layer.cornerRadius = 40
        return view
    }()
    
    private lazy var bottomImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(resource: .back)
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    private lazy var accauntLabel: UILabel = {
        let view = UILabel()
        view.text = "Don’t have an Account?"
        view.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        view.textColor = .black
        return view
    }()
    
    private lazy var signUpButton: UIButton = {
        let view = UIButton()
        view.setTitle("Sign Up", for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        view.setTitleColor(UIColor(hex: "#4B94EA"), for: .normal)
        view.addTarget(self, action: #selector(signInBtnTapped), for: .touchUpInside)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(hex: "4AC6E9")
        
        setupUI()
    }
    private func setupUI() {
        view.addSubview(childImage)
        childImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(-35)
            make.leading.equalToSuperview().offset(10)
            make.trailing.equalToSuperview().offset(-10)
        }
        view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview().offset(-90)
            make.leading.equalToSuperview().offset(15)
        }
        view.addSubview(subtitleLabel)
        subtitleLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(15)
        }
        view.addSubview(signInView)
        signInView.snp.makeConstraints { make in
            make.bottom.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.5)
        }
        signInView.addSubview(employeeLabel)
        employeeLabel.snp.makeConstraints { make in
            make.top.equalTo(signInView).offset(35)
            make.leading.equalToSuperview().offset(23)
        }
        signInView.addSubview(emailTextField)
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(employeeLabel).offset(15)
            make.leading.equalToSuperview().offset(23)
            make.trailing.equalToSuperview().offset(-23)
            make.height.equalTo(62)
        }
        signInView.addSubview(lineView)
        lineView.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom)
            make.leading.equalToSuperview().offset(23)
            make.trailing.equalToSuperview().offset(-23)
            make.height.equalTo(1)
        }
        signInView.addSubview(passwordLabel)
        passwordLabel.snp.makeConstraints { make in
            make.top.equalTo(lineView).offset(20)
            make.leading.equalToSuperview().offset(23)
        }
        signInView.addSubview(passwordTextField)
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordLabel).offset(15)
            make.leading.equalToSuperview().offset(23)
            make.trailing.equalToSuperview().offset(-23)
            make.height.equalTo(62)
        }
        passwordTextField.addSubview(secureImage)
        secureImage.snp.makeConstraints { make in
            make.centerY.equalTo(passwordTextField)
            make.trailing.equalToSuperview().offset(-10)
            make.height.equalTo(13)
            make.width.equalTo(18)
        }
        signInView.addSubview(secondLineView)
        secondLineView.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom)
            make.leading.equalToSuperview().offset(23)
            make.trailing.equalToSuperview().offset(-23)
            make.height.equalTo(1)
        }
        signInView.addSubview(forgotPasswordButton)
        forgotPasswordButton.snp.makeConstraints { make in
            make.top.equalTo(secondLineView).offset(5)
            make.trailing.equalToSuperview().offset(-23)
        }
        signInView.addSubview(checkBoxButton)
        checkBoxButton.snp.makeConstraints { make in
            make.top.equalTo(forgotPasswordButton).offset(40)
            make.leading.equalToSuperview().offset(23)
        }
        signInView.addSubview(rememberLabel)
        rememberLabel.snp.makeConstraints { make in
            make.top.equalTo(forgotPasswordButton).offset(40)
            make.leading.equalTo(checkBoxButton).offset(30)
        }
        signInView.addSubview(bottomImage)
        bottomImage.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(5)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalTo(132)
        }
        signInView.addSubview(signInButton)
        signInButton.snp.makeConstraints { make in
            make.top.equalTo(rememberLabel).offset(40)
            make.leading.equalToSuperview().offset(98)
            make.trailing.equalToSuperview().offset(-98)
            make.height.equalTo(40)
        }
        signInView.addSubview(accauntLabel)
        accauntLabel.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-60)
            make.leading.equalToSuperview().offset(25)
        }
        signInView.addSubview(signUpButton)
        signUpButton.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-53)
            make.leading.equalTo(accauntLabel.snp.trailing).offset(10)
        }
        
    }
    @objc func signInBtnTapped() {
        // Проверяем, содержит ли текстовое поле электронную почту
        if let emailText = emailTextField.text, emailText.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            // Текстовое поле не содержит текст, устанавливаем красный бордюр
            emailTextField.layer.borderColor = UIColor.red.cgColor
        } else {
            // Текстовое поле содержит текст, устанавливаем стандартный бордюр
            emailTextField.layer.borderColor = UIColor.lightGray.cgColor
        }
        
        // Другие действия, связанные с нажатием кнопки "Sign In", например, переход на другой экран
        let vc = SuccessVC()
        navigationController?.pushViewController(vc, animated: true)
    }

    
}

