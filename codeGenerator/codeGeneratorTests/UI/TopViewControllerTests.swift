import XCTest
@testable import codeGenerator

class TopViewControllerTests: XCTestCase {
    
    var window: UIWindow!
    var viewController: TopViewController!
    override func setUp() {

        setupViewController()
        viewController.viewDidLoad()
        
        super.setUp()
    }
    
    func test_画面タイトルが正しいこと() {
        XCTAssertEqual(viewController.codeGeneratorItem.title, "トップ")
    }

    func test_Pushボタンタップ時に次の画面に遷移すること() {
        viewController.pushButton.sendActions(for: .touchUpInside)
        
//        Thread.sleep(forTimeInterval: 5)
//        RunLoop().run(until: Date(timeIntervalSinceNow: 10))
        XCTAssertNotNil(viewController.codeGeneratorController?.viewControllers.last as? TopViewController)
        XCTAssertNotNil(viewController.codeGeneratorController?.viewControllers.last as? NextViewController)
    }

    func test_Presentボタンタップ時に次の画面に遷移すること() {
        viewController.presentButton.sendActions(for: .touchUpInside)
        XCTAssertNotNil(viewController.codeGeneratorController?.presentedViewController as? NextViewController)
    }

    func test_true() {
        XCTAssertTrue(true)
    }
    
    // MARK: - Private Method
    fileprivate func setupViewController() {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        viewController = TopViewController()
        let codeGeneratorController = UINavigationController(rootViewController: viewController)
        window.rootViewController = codeGeneratorController
        window.makeKeyAndVisible()
    }
}
