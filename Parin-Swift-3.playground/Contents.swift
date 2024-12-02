import UIKit
/*
 Create base class Computer with common properties and methods.
 
 Subclasses Laptop, Desktop, and Server that inherit from Computer and add unique properties and methods.
 A function to display detailed specifications of each computer type.
 Create the Base Class (Computer)
 
 Add the following properties:
 brand: String
 processor: String
 ram: Int (amount of RAM in GB)
 Create an initializer for these properties.
 Add a method displaySpecs() that prints the values of these properties.
 Create Subclasses:
 
 Laptop:
 
 Add an additional property isTouchscreen (a Bool to indicate if the laptop has a touchscreen).
 Override the displaySpecs() method to include this property.
 Desktop:
 
 Add an additional property hasDedicatedGPU (a Bool to indicate if the desktop has a dedicated GPU).
 
 Override the displaySpecs() method to include this property.
 
 Server:
 
 Add an additional property rackUnits (an Int to specify the server's size in rack units).
 
 Override the displaySpecs() method to include this property.
 
 Write some test code:
 
 Create one object for each subclass (Laptop, Desktop, and Server).
 Assign appropriate values to their properties.
 Call the displaySpecs() method for each object to print their specifications.
 */
//===================>
//===computer class==>
class Computer {
    
    private var brand: String
    private var processor: String
    private var ram: Int
    
    init(brand: String, processor: String, ram: Int) {
        self.brand = brand
        self.processor = processor
        self.ram = ram
    }
    
    // Getters
    func getBrand() -> String {
        return brand
    }
    
    func getProcessor() -> String {
        return processor
    }
    
    func getRam() -> Int {
        return ram
    }
    
    // Method to display specs
    func displaySpecs() {
        print("Brand: \(getBrand())")
        print("Processor: \(getProcessor())")
        print("RAM: \(getRam()) GB")
    }
}

//=====================>
//===laptop subclass===>
class Laptop: Computer {
    
    private var isTouchscreen: Bool
    
    init(brand: String, processor: String, ram: Int, isTouchscreen: Bool) {
        self.isTouchscreen = isTouchscreen
        super.init(brand: brand, processor: processor, ram: ram)
    }
    
    // Getter
    func getIsTouchscreen() -> Bool {
        return isTouchscreen
    }
    
    
    override func displaySpecs() {
        super.displaySpecs()
        print("Touchscreen: \(getIsTouchscreen() ? "Yes" : "No")")
    }
}

//=====================>
//===Computer subclass===>
class Desktop: Computer {
    
    private var hasDedicatedGPU: Bool
    
    
    init(brand: String, processor: String, ram: Int, hasDedicatedGPU: Bool) {
        self.hasDedicatedGPU = hasDedicatedGPU
        super.init(brand: brand, processor: processor, ram: ram)
    }
    
    // Getter
    func getHasDedicatedGPU() -> Bool {
        return hasDedicatedGPU
    }
    
    
    override func displaySpecs() {
        super.displaySpecs()
        print("Dedicated GPU: \(getHasDedicatedGPU() ? "Yes" : "No")")
    }
}
//=====================>
//===Server subclass===>
class Server: Computer {
    
    private var rackUnits: Int
    
    
    init(brand: String, processor: String, ram: Int, rackUnits: Int) {
        self.rackUnits = rackUnits
        super.init(brand: brand, processor: processor, ram: ram)
    }
    
    // Getter
    func getRackUnits() -> Int {
        return rackUnits
    }
    override func displaySpecs() {
        super.displaySpecs()
        print("Rack Units: \(getRackUnits())")
    }
}

// Test Code
let myLaptop = Laptop(brand: "Apple", processor: "M3", ram: 16, isTouchscreen: false)
let myDesktop = Desktop(brand: "Dell", processor: "Intel i7", ram: 32, hasDedicatedGPU: true)
let myServer = Server(brand: "HP", processor: "Xeon", ram: 64, rackUnits: 4)

// Display specifications for each computer type
print("Laptop Specifications:")
myLaptop.displaySpecs()

print("\nDesktop Specifications:")
myDesktop.displaySpecs()

print("\nServer Specifications:")
myServer.displaySpecs()
