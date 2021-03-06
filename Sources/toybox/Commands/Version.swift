import Foundation
import ToyboxKit
import Commandant
import Result

public struct VersionCommand: CommandProtocol {
    public typealias Options = NoOptions<ToyboxError>
    public typealias ClientError = ToyboxError

    public let verb = "version"
    public let function = "Display the current version of Toybox"

    public func run(_ options: NoOptions<ToyboxError>) -> Result<(), ToyboxError> {
        println(object: ToyboxKit.toyboxVersion)
        return .success(())
    }
}
