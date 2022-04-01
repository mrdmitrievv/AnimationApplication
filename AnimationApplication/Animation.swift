import Spring

struct Animation {
    var name: String
    var curve: String
    var duration: Float
    var force: Float
    var delay: Float
    
    var description: String {
        return """
        name: \(name)
        curve: \(curve)
        duration: \(String(format: "%.02f", duration))
        force: \(String(format: "%.02f", force))
        delay: \(String(format: "%.02f", delay))
        """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            name: DataManager.shared.animations.randomElement()?.rawValue ?? "pop",
            curve: DataManager.shared.animations.randomElement()?.rawValue ?? "easeIn",
            duration: Float.random(in: 0.5...1.5),
            force: Float.random(in: 0.5...1.5),
            delay: Float.random(in: 0.3...1))
    }
}
