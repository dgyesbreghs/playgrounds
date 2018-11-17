struct Identity {
    let firstName: String = "Dylan"
    let lastName: String = "Gyesbreghs"
    let age: Int = 26
}

struct IdentityCardEnum {
    static let FIRSTNAME = IdentityCard(title: "Firstname:", property: \Identity.firstName)
    static let LASTNAME = IdentityCard(title: "Lastname:", property: \Identity.lastName)
    static let AGE = IdentityCard(title: "Age:", property: \Identity.age)
}

struct IdentityCard<T> {
    let title: String
    let property: KeyPath<Identity, T>
}

let id = Identity()
let rows: [Any] = [IdentityCardEnum.FIRSTNAME, IdentityCardEnum.LASTNAME, IdentityCardEnum.AGE]

for row in rows {
    if let card = row as? IdentityCard<Int> {
        print("🍾: \(id[keyPath: card.property])")
    } else if let card = row as? IdentityCard<String> {
        print("🍾: \(id[keyPath: card.property])")
    }
}
