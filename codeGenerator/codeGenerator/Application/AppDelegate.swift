import UIKit

class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        
        let viewController = TopViewController()
        let codeGeneratorController = UINavigationController(rootViewController: viewController)
        window?.rootViewController = codeGeneratorController
        window?.makeKeyAndVisible()
        
        return true
    }
}

class TestingAppDelegate: UIResponder, UIApplicationDelegate { }
