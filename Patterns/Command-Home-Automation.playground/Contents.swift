//: Playground - noun: a place where people can play


let remoteControl = RemoteControl()
RemoteLoader.setupRemoteControl(remoteControl)
print(remoteControl)

remoteControl.onButtonWasPushed(0)
remoteControl.offButtonWasPushed(0)
remoteControl.onButtonWasPushed(1)
remoteControl.undo()

