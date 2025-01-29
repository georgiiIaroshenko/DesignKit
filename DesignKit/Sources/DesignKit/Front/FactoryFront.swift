protocol FactoryFrontProtocol {
    var front: AppFront { get }
    var size: AppFrontSize { get }
}

struct FactoryFront: FactoryFrontProtocol {
    var front: AppFront
    var size: AppFrontSize
    
}
