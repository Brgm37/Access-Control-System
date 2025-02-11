//hardware masks
//const val SDC_ENABLE = 0x08
//const val LCD_ENABLE = 0x04
//const val SERIAL_CLK = 0x02
//const val SIZE = 0x05
//const val SERIAL_NIBBLE = 0x01
//const val BUSY = 0x10

// software simulation mask
const val SDC_ENABLE = 0x02
const val LCD_ENABLE = 0x01
const val SERIAL_CLK = 0x10
const val SIZE = 0x05
const val SERIAL_NIBBLE = 0x08
const val BUSY = 0x40
const val SERIAL_NIBBLE_MASK = 0x01
const val SERIAL_NIBBLE_SHIFT = 0x03
enum class Destination { LCD, DOOR }

object SerialEmitter {
    fun init(){
//        HAL.init()
        HAL.setBits(SDC_ENABLE or LCD_ENABLE)
        HAL.clrBits(SERIAL_CLK)
    }
    fun send(addr: Destination, data: Int){
        when(addr){
            Destination.LCD -> HAL.clrBits(LCD_ENABLE)
            Destination.DOOR -> HAL.clrBits(SDC_ENABLE)
        }
//        for (it in 1 .. 5){
//            println(data shr (SIZE - (it)) and SERIAL_NIBBLE)
//            HAL.writeBits(SERIAL_NIBBLE, data shr (SIZE - (it)))
//            HAL.setBits(SERIAL_CLK)
//            HAL.clrBits(SERIAL_CLK)
//        }
        repeat(SIZE){
            val msg = ((data shr(it)) and SERIAL_NIBBLE_MASK) shl (SERIAL_NIBBLE_SHIFT)
//            println(msg and SERIAL_NIBBLE)
            HAL.writeBits(SERIAL_NIBBLE, msg)
            HAL.setBits(SERIAL_CLK)
            HAL.clrBits(SERIAL_CLK)
        }
//        Thread.sleep(150)
        when(addr) {
            Destination.LCD -> HAL.setBits(LCD_ENABLE)
            Destination.DOOR -> HAL.setBits(SDC_ENABLE)
        }
    }
    fun isBusy(): Boolean = HAL.readBits(BUSY) != 0
}
fun main(){
    SerialEmitter.init()
    SerialEmitter.send(Destination.LCD, 0b11001)
//    if (!SerialEmitter.isBusy()) SerialEmitter.send(SerialEmitter.Destination.DOOR, 0b01010)
}