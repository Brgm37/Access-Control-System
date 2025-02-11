import isel.leic.utils.*

const val NONE = 0x00
const val D_VAL = 0x10
const val K_ACK = 0x80

private val intToChar =  listOf('1', '4', '7', '*', '2', '5', '8', '0', '3', '6', '9', '#')

object KBD {
    fun init(){
    }
    fun getKey():Char{
        val isValid = HAL.isBit(D_VAL)
        val key = HAL.readBits(NIBBLE)
        return if (isValid) {
            HAL.setBits(K_ACK)
            while (HAL.isBit(D_VAL));
            HAL.clrBits(K_ACK)
            if (key < intToChar.size)  intToChar[key] else NONE.toChar()
        }
        else {
            NONE.toChar()
        }
    }
    fun waitKey(timeout: Long): Char{
        var key: Char = NONE.toChar()
        val begTime = Time.getTimeInMillis()+timeout
        while (begTime >= Time.getTimeInMillis()) {
            key = getKey()
            if (key != NONE.toChar())
                break
        }
        return key
    }
}

 fun main(){
     HAL.init()
     KBD.init()
     while(true){
         val test = KBD.getKey()
         if (test != NONE.toChar())
             println(test)
     }
 }