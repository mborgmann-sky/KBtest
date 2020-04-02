import UIKit

class ChangeKeyColor {
    
    init() {
    addColorToKeyboardButton()
    }
    
    private func subviewsOfView(view: UIView, withType type: String) -> [UIView] {
        let prefix = "<\(type)"
                
        var subviewArray = view.subviews.flatMap { subview in
            subviewsOfView(view: subview, withType: type)
        }
                
        if view.description.hasPrefix(prefix) {
            subviewArray.append(view)
        }
        
        return subviewArray
    }
    
    private func addColorToKeyboardButton() {
        for keyboardWindow in UIApplication.shared.windows {
            for keyboard in keyboardWindow.subviews {
                for view in subviewsOfView(view: keyboard, withType: "UIKBKeyplaneView") {
                    let newView = UIView(frame: subviewsOfView(view: keyboard, withType: "UIKBKeyView").last!.frame)
                    newView.frame = CGRect(x: newView.frame.origin.x + 2, y: newView.frame.origin.y + 1,
                                           width: newView.frame.size.width - 4, height: newView.frame.size.height - 3)
                    newView.backgroundColor = .black
                    newView.layer.cornerRadius = 4
                    view.insertSubview(newView, belowSubview: subviewsOfView(view: keyboard, withType: "UIKBKeyView").last!)
                    
                    let label = UILabel(frame: newView.frame)
                    label.text = "Next"
                    label.textColor = .white
                    label.textAlignment = .center
                    newView.addSubview(label)
                    view.insertSubview(label, aboveSubview: subviewsOfView(view: keyboard, withType: "UIKBKeyView").last!)
                }
            }
        }
    }
    
}
