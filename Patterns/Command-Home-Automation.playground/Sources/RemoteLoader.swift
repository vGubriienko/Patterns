import Foundation


public class RemoteLoader {
    
    public static func setupRemoteControl(remoteControl: RemoteControl) {
        let light = Light()
        remoteControl.setCommandAtIndex(
            0,
            onCommand: { isUndo in
                if isUndo {
                    light.off()
                } else {
                    light.on()
                }
            },
            offCommand: { isUndo in
                if isUndo {
                    light.on()
                } else {
                    light.off()
                }
            }
        )
        
        let stereo = Stereo()
        remoteControl.setCommandAtIndex(
            1,
            onCommand: { isUndo in
                if isUndo {
                    stereo.off()
                } else {
                    stereo.on()
                    stereo.setCD()
                    stereo.setVolume(11)
                }
            },
            offCommand: { isUndo in
                if isUndo {
                    stereo.on()
                    stereo.setCD()
                    stereo.setVolume(11)
                } else {
                    stereo.off()

                }
            }
        )
    }
    
}
