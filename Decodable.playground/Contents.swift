import Foundation

struct Swifter: Decodable {
    let fullName: String
    let id: Int
    let twitter: URL
}

let json = """
{
 "fullName": "Burak Kebapci",
 "id": 123456,
 "twitter": "http://twitter.com/"
}
""".data(using: .utf8)! // our data in native (JSON) format

let myStruct = try JSONDecoder().decode(Swifter.self, from: json) // Decoding our data

print(myStruct) // decoded!!!!!

