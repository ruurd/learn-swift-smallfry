struct Book {
    let name: String
    let number: Int
}

extension Book: Comparable {
    static func < (lhs: Book, rhs: Book) -> Bool {
        if lhs.number != rhs.number {
            return lhs.number > rhs.number
        } else {
            return lhs.name < rhs.name
        }
    }
    
    static func == (lhs: Book, rhs: Book) -> Bool {
        return lhs.name == rhs.name && lhs.number == rhs.number
    }
}

let books = [
    Book(name: "aaac", number: 3),
    Book(name: "ccba", number: 2),
    Book(name: "addb", number: 3),
    Book(name: "cabd", number: 3),
    Book(name: "bbca", number: 2),
    Book(name: "bdba", number: 1),
    Book(name: "bacc", number: 3),
    Book(name: "bdca", number: 1),
    Book(name: "adca", number: 2),
    Book(name: "dbad", number: 3),
    Book(name: "cdbc", number: 1),
    Book(name: "cbba", number: 1),
    Book(name: "dbbb", number: 2),
    Book(name: "abac", number: 2),
    Book(name: "acdc", number: 1),
    Book(name: "bcdd", number: 1),
    Book(name: "addd", number: 1),
    Book(name: "bcbb", number: 1),
    Book(name: "bdab", number: 3),
    Book(name: "bacd", number: 2),
    Book(name: "ddab", number: 3)
]

for book in books.sorted() {
    print("\(book.name) : \(book.number)")
}