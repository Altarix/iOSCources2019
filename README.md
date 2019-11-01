# Курсы iOS на Swift 2019

Курсы подготовки iOS разработчиков в компании Altarix. Сезон 2019 года включает:
- [x] различные методические материалы
- [x] ученический исходный код
- [x] описание домашних заданий.

## Оглавление:

* [Общие сведения](README.md#common)
* [Правила выполнения домашних заданий](README.md#codeStyle)
* [Лицензия на использование материала](README.md#license)


## <a name="common"></a>Общие сведения

* Материал по каждому уроку лежит в отдельной папки: 01 - [Name 1], 02 - [Name 2], 03 - [Name 3].
* Материалы будут включать различные описания и домашние задания, оформляемые в [md файлах](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
* Код проектов может включать [Pod - файлы](https://guides.cocoapods.org/using/the-podfile.html) с помощью которых необходимо будет выкачивать зависимый код библиотек, поэтому кроме XCode 11, на компьютере должен быть уставновлен [Cocoapods](https://cocoapods.org/)

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

## <a name="license"></a>Лицензия

Материал данного материала можно использовать как для обучения, так и в комерческих целях согласно ограничениям [лицензии MIT](LICENSE.MD)
