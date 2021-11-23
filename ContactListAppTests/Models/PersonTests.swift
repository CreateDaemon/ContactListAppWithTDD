//
//  PersonTests.swift
//  ContactListAppTests
//
//  Created by Дмитрий Межевич on 23.11.21.
//

import XCTest

class PersonTests: XCTestCase {

    var image: UIImage?
    var dataImage: Data?
    
    override func setUp() {
        super.setUp()
        image = #imageLiteral(resourceName: "avatar")
        guard let image = image else { return }
        dataImage = image.pngData()
    }
    
    override func tearDown() {
        image = nil
        dataImage = nil
        super.tearDown()
    }
    
    func testInitPersonWithNameAndNumber() {
        let person = Person(name: "Foo", number: "Bar")
        XCTAssertNotNil(person)
    }
    
    func testInitPersonWithSurname() {
        let person = Person(name: "Foo", number: "Bar", surname: "Baz")
        XCTAssertNotNil(person)
    }
    
    func testWhenInitPersonTransferValuesWithNameAndNumber() {
        let person = Person(name: "Foo", number: "Bar")
        XCTAssertEqual(person.name, "Foo")
        XCTAssertEqual(person.number, "Bar")
    }
    
    func testWhenInitPersonTransferValuesWithSurname() {
        let person = Person(name: "Foo", number: "Bar", surname: "Baz")
        XCTAssertEqual(person.surname, "Baz")
    }

    func testInitPersonWithNameNumberAndTransferDate() {
        let person = Person(name: "Foo", number: "Bar")
        XCTAssertNotNil(person.date)
    }
    
    func testInitPersonWithSurnameAndTransferDate() {
        let person = Person(name: "Foo", number: "Bar", surname: "Baz")
        XCTAssertNotNil(person.date)
    }
    
    func testInitPersonWithNameNumberAndTransferImage() {
        let person = Person(name: "Foo", number: "Bar", image: dataImage)
        XCTAssertNotNil(person.imageData)
        XCTAssertEqual(person.imageData, dataImage)
    }
    
    func testInitPersonWithSurnameAndTransferImage() {
        let person = Person(name: "Foo", number: "Bar",surname: "Baz" , image: dataImage)
        XCTAssertNotNil(person.imageData)
        XCTAssertEqual(person.imageData, dataImage)
    }

}
