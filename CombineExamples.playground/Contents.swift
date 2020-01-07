import Combine

let publisher = Just("Some text")

_ = publisher.sink { print($0) }

/// Subject
let subject = PassthroughSubject<String, Never>()
_ = subject.eraseToAnyPublisher().sink { print($0) }
subject.send("Bonjour!")

let curValueSubj = CurrentValueSubject<String, Never>("default")
_ = curValueSubj.eraseToAnyPublisher().sink { print($0) }
