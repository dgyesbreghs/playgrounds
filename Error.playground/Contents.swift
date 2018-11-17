import Foundation

class MockedSwoopError: LocalizedError {
    var localizedDescription: String { return "key" }
    var errorDescription: String? { return localizedDescription }
}

class MockedUnknownSwoopError: LocalizedError {
    var localizedDescription: String { return "unknown" }
    var errorDescription: String? { return localizedDescription }
}

class MockedError: Error {
    var localizedDescription: String {
        return "key"
    }
}

extension MockedError: LocalizedError {
    var errorDescription: String? {
        return localizedDescription
    }
}

extension Error {
    var localizedTitle: String {
        print("🙄: \(localizedDescription)")
        return localizedDescription
    }
}

let error = MockedError()
error.localizedTitle

let mockedError = MockedSwoopError()
mockedError.localizedTitle

let unknownError = MockedUnknownSwoopError()
unknownError.localizedTitle

print(12)
print("Dylan Gyesbreghs")
print("TEST \(error.localizedDescription)")
print(String(format: "%@", "test"))
