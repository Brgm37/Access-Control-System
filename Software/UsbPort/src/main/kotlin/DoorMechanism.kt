const val OPEN = 0x1

object DoorMechanism {
    fun init(){}
    fun open(velocity: Int){
        val msg = velocity shl (1) or OPEN
        SerialEmitter.send(Destination.DOOR, msg)
    }
    fun close(velocity: Int){
        val msg = velocity shl (1)
        SerialEmitter.send(Destination.DOOR, msg)
    }
    fun finished(): Boolean = !SerialEmitter.isBusy()
}

fun main(){
    HAL.init()
    SerialEmitter.init()
    DoorMechanism.init()
    while (true) {
        DoorMechanism.open(2)
        while (!DoorMechanism.finished());
        DoorMechanism.close(2)
        while ((!DoorMechanism.finished()));
    }
}
