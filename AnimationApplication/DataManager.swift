import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let animations: [Spring.AnimationPreset] = [
        .fadeIn,
        .fadeOut,
        .fall,
        .flash,
        .flipX,
        .flipY,
        .morph,
        .pop,
        .shake,
        .slideUp,
        .squeeze,
        .wobble,
        .zoomIn,
        .swing
    ]

    let curves = Spring.AnimationCurve.allCases
}


