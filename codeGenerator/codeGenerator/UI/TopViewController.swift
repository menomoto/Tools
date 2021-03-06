import UIKit

class TopViewController: UIViewController {
    
    // MARK: - Properties

    // MARK: - View Elements
    let pushButton = UIButton(type: .system)
    let presentButton = UIButton(type: .system)

    // MARK: - Initializers
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - View Controller Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.title = "トップ"
        
        addSubviews()
        configureSubviews()
        applyStyles()
        addConstraints()
    }
    
    // MARK: - View Setup
    fileprivate func addSubviews() {
        view.addSubview(pushButton)
        view.addSubview(presentButton)
    }
    
    fileprivate func configureSubviews() {
        pushButton.setTitle("Push", for: .normal)
        pushButton.addTarget(self, action: #selector(didTapPushButton), for: .touchUpInside)

        presentButton.setTitle("Present", for: .normal)
        presentButton.addTarget(self, action: #selector(didTapPresentButton), for: .touchUpInside)
    }
    
    fileprivate func applyStyles() {
    }

    fileprivate func addConstraints() {
        pushButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pushButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pushButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            ])
        
        presentButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            presentButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            presentButton.topAnchor.constraint(equalTo: presentButton.bottomAnchor, constant: 20.0)
            ])
    }
    
    @objc fileprivate func didTapPushButton() {
        let viewController = NextViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }

    @objc fileprivate func didTapPresentButton() {
        let viewController = NextViewController()
        navigationController?.present(viewController, animated: true, completion: nil)
    }
}
