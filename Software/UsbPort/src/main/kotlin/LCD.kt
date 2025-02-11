const val NIBBLE = 0x0F
const val DATA = 0x01
const val CLEAR = 0x01
const val FUNC_SET = 0x03
const val FUNC_SET_2 = 0x2C
const val FUNC_SET_3 = 0x06
const val DISPLAY_OFF = 0x08
const val DISPLAY_CLEAR = 0x01
const val FUN_SET_4 = 0x02
const val ON_DISPLAY = 0x0F
const val CURSOR_MASK = 0x80

object LCD {
    const val LINES = 2
    const val COLS = 16
//    private fun writeNibbleParallel(rs: Boolean, data: Int){
//        HAL.writeBits(NIBBLE, data)
//        if (rs) HAL.setBits(COMMAND) else HAL.clrBits(COMMAND)
//        HAL.setBits(ENABLE)
//        HAL.clrBits(ENABLE)
//    }
    private fun writeNibbleSerial(rs: Boolean, data: Int){
        // hardware msg
//        val msg = if (!rs) NIBBLE and data else COMMAND or data
        // software simulation msg
        val msg = if (!rs) (NIBBLE and data) shl (1) else DATA or ((NIBBLE and data) shl(1))
        SerialEmitter.send(Destination.LCD, msg)
        Thread.sleep(1)
    }
    private fun writeBytes(rs: Boolean, data: Int){
        writeNibbleSerial(rs,data shr (4))
        writeNibbleSerial(rs, data)
    }
    private fun writeCMD(data: Int) =
        writeBytes(false, data)
    private fun writeData(data: Int) =
        writeBytes(true, data)
    fun init(){
//        SerialEmitter.init()
        repeat(3){
            writeNibbleSerial(false, FUNC_SET)
            isel.leic.utils.Time.sleep(5)
        }
        writeNibbleSerial(false, FUN_SET_4)
        writeCMD(FUNC_SET_2)
        writeCMD(DISPLAY_OFF)
        writeCMD(DISPLAY_CLEAR)
        writeCMD(FUNC_SET_3)
        writeCMD(ON_DISPLAY)
    }
    fun write(c: Char) =
        writeData(c.code)
    fun write(text: String) =
        text.forEach(::write)
    fun cursor(line:Int, column: Int) =
        writeCMD(CURSOR_MASK or column+(line*0x40))
    fun clear() =
        writeCMD(CLEAR)
}
fun main(){
    HAL.init()
    SerialEmitter.init()
    LCD.init()
    LCD.write("hello")
    LCD.cursor(1, 5)
    LCD.write("world")
}
