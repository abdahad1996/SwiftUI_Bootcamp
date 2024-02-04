import UIKit

struct ConsoleLogged<Value> {
    private var value: Value
    
    init(wrappedValue: Value) {
        self.value = wrappedValue
    }

    var wrappedValue: Value {
        get { value }
        set {
            value = newValue
            print("New value is \(newValue)")
        }
    }
}
@propertyWrapper
 struct Wrapper<T> {
    var value: T

    var wrappedValue: T {
        get { self.value }
        set {
            print("value is \(newValue)")
            self.value = newValue
            
        }
        }
    
    var projectedValue: Wrapper<T> { return self }

    func foo() { print("Foo") }
}

struct HasWrapper {
    @Wrapper(value: 0) var x
    
    func foo(){
        return _x.foo()
    }
}

var bar = HasWrapper()
//bar.x = 1
bar.$x.value

