# An Example of Protocol and Delegate

```swift
Protocol AdvancedLifeSupport {
  func performCPR()
}

class EmergencyCallHandler {
  var delegate: AdvancedLifeSupport?

  func assessSituation() {
    print("Can you tell me what happened?")
  }

  func medicalEmergency() {
    delegate?.performCPR()
  }
}

struct Paramedic: AdvancedLifeSupport {

  init(handler: EmergencyCallHandler) {
    handler.delegate = self
  }

  func performCPR() {
    print("The paramedic does chest compressions, 30 per second.")
  }
}
```
