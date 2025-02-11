import isel.leic.UsbPort

object HAL {
    private var currentBit = 0x00
    fun init(){
        UsbPort.write(currentBit)
    }
    fun isBit(mask: Int): Boolean =
        mask and UsbPort.read() != 0
    fun readBits(mask: Int): Int =
        mask and UsbPort.read()
    fun writeBits(mask: Int, value: Int) {
        currentBit = (mask and value) or (currentBit and mask.inv())
        UsbPort.write(currentBit)
    }
    fun setBits(mask: Int) {
        currentBit = mask or currentBit
        UsbPort.write(currentBit)
    }
    fun clrBits(mask: Int) {
        currentBit = mask.inv() and  currentBit
        UsbPort.write(currentBit)
    }
}