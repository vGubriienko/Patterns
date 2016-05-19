import Foundation


public class RemoteControl: CustomStringConvertible {
    
    public typealias Command = (isUndo: Bool) -> Void
    
    static let commandsCount = 7
    
    private var undoCommand: Command?
    
    private (set) var onCommands = [Command?](count: RemoteControl.commandsCount, repeatedValue: nil)
    private (set) var offCommands = [Command?](count: RemoteControl.commandsCount, repeatedValue: nil)
    
    
    public init() {
        
    }
    
    public func setCommandAtIndex(index: Int, onCommand: Command, offCommand: Command) {
        guard index >= 0 && index < RemoteControl.commandsCount else {
            print("Wrong index \(index). Should be in range (0..\(RemoteControl.commandsCount))")
            return
        }
        
        onCommands[index] = onCommand
        offCommands[index] = offCommand
    }

    public func onButtonWasPushed(index: Int) {
        guard index >= 0 && index < RemoteControl.commandsCount else {
            print("Wrong index \(index). Should be in range (0..\(RemoteControl.commandsCount))")
            return
        }

        onCommands[index]?(isUndo: false)
        undoCommand = onCommands[index]
    }
    
    public func offButtonWasPushed(index: Int) {
        guard index >= 0 && index < RemoteControl.commandsCount else {
            print("Wrong index \(index). Should be in range (0..\(RemoteControl.commandsCount))")
            return
        }
        
        offCommands[index]?(isUndo: false)
        undoCommand = offCommands[index]
    }
    
    public var description: String {
        var output = "\n----- Remote Control -----\n"
        for i in 0..<RemoteControl.commandsCount {
            let slotValue = (onCommands[i] == nil) ? "unset" : "set"
            output += "[slot \(i)] commands \(slotValue)\n"
        }
        
        return output
    }
    
    public func undo() {
        if let undoCommand = undoCommand {
            undoCommand(isUndo: true)
            self.undoCommand = nil
        }
    }
    
}
