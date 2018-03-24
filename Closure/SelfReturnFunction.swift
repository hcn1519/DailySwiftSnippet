
extension UIAlertController {
    typealias AlertControllerAction = (UIAlertController) -> Void

    @discardableResult
    func withAction(item: AlertControllerAction) -> Self {
        item(self)
        return self
    }

    @discardableResult
    func completion(action: @escaping AlertControllerAction) -> Self {
        action(self)
        return self
    }
}

// Previous Style
let alert = UIAlertController(title: "사진 접근 제한", message: "설정 탭에서 사진 접근 권한을 켜주세요.", preferredStyle: UIAlertControllerStyle.alert)
let ok = UIAlertAction(title: "확인", style: .default, handler: nil)

alert.addAction(ok)
self.present(alert, animated: true, completion: nil)


// New Style
UIAlertController(title: "사진 접근 제한", message: "설정 탭에서 사진 접근 권한을 켜주세요.",
                  preferredStyle: UIAlertControllerStyle.alert)
                        .withAction {
                            $0.addAction(UIAlertAction(title: "확인", style: .default, handler: nil))
                        }.completion {
                            self.present($0, animated: true, completion: nil)
                    }

