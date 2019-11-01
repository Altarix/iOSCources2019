# Курсы iOS на Swift 2019

Курсы подготовки iOS разработчиков в компании Altarix. Сезон 2019 года включает:
- [x] различные методические материалы
- [x] ученический исходный код
- [x] описание домашних заданий.

## Оглавление:

* [Правила выполнения домашних заданий](README.md#codeStyle)


## <a name="codeStyle"></a>Правила выполнения домашних заданий

* Исходный код необходимо хранить в открытом репозиторие на [github](https://github.com) или [bitbucket](https://bitbucket.org/)
* Код необходимо оформлять согласно [guidlines от Apple](https://swift.org/documentation/api-design-guidelines/#fundamentals). Больше правил и описания вы найдете [здесь](https://google.github.io/swift/)
* Дизайн вашего решения лучше оформлять согласно Human [Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/)
* Пример кода:
```swift
class InputController: BxInputController {

    @IBOutlet var nameLabel : UILabel!
    
    var productId: String?
    private var products : [Product] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        products = [
            Product(id: "1", name: "value1"),
            Product(id: "2", name: "value2"),
            Product(id: "3", name: "value3")
        ]
    }

    @IBAction clickProduct(_ sender: Any) {
        guard let productId = self.productId else {
            return
        }
        guard let product = products.first{ $0.id == productId } {
            print(product.name)
        }
    }
}

```
