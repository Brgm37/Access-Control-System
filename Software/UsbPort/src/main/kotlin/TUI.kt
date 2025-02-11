import java.time.LocalDate
import java.time.LocalTime

const val INPUT_WIDTH = 4
const val USER_HEIGHT = 1
const val UIN_SIZE = 3
const val PIN_SIZE = 4


enum class DisplayMode {
    LEFT,
    CENTER,
    RIGHT
}

const val TIME_OUT = 5000

private const val DEL_CHAR = '?'

object TUI {

    private const val COLS = LCD.COLS
    fun init() {
//        KBD.init()
//        LCD.init()
    }
    private fun clearCursor() = LCD.cursor(USER_HEIGHT, COLS+1)
    private fun showTime() {
        val date = LocalDate.now().toString()
        val time = LocalTime.now()
        displayWrite(date, DisplayMode.LEFT)
        displayWrite("$time", DisplayMode.LEFT, column = date.length+1)
    }
    fun getKey() = KBD.getKey()
    fun waitKey() = KBD.waitKey((TIME_OUT/2).toLong())
    private fun getKeys(length: Int, time: Boolean): String {
        var word = ""
        while (word.length < length){
            val key = KBD.waitKey(TIME_OUT.toLong())
            if (key != NONE.toChar()){
                if (key == '*' && word.isNotEmpty()) return key.toString()
                if (key == '*' && word.isEmpty()) return NONE.toString()
                if (key != '#') word += key
                if (time) showTime()
                var showWord = ""
                if (length == UIN_SIZE)
                    showWord = word
                else
                    word.forEach { _ ->
                        showWord += '*'
                    }
                displayWrite(showWord, DisplayMode.LEFT, USER_HEIGHT, INPUT_WIDTH)
            }
            else
                return NONE.toString()
        }
        return word
    }
    fun waitInput(type: Int, text: String? = null): String {
        clear()
        if (text == null) showTime() else displayWrite(text, DisplayMode.CENTER)
        val msg = if (type == PIN_SIZE) "PIN:" else "UIN:"
        displayWrite(msg, DisplayMode.LEFT, USER_HEIGHT)
        fill(USER_HEIGHT, INPUT_WIDTH, DEL_CHAR, type)
        while (true){
            when (val keys = getKeys(type, text == null)) {
                "*" -> {
                    fill(USER_HEIGHT, INPUT_WIDTH, DEL_CHAR, type)
                }
                NONE.toString() -> return "NONE"
                else -> return keys
            }
        }
    }
    private fun clear() = LCD.clear()
    fun emptyScreen(){
        clear()
        clearCursor()
    }
    private fun fill(line: Int, column: Int, char: Char, n: Int) {
        LCD.cursor(line, column)
        LCD.write(char.toString().repeat(n))
        LCD.cursor(line, column)
    }
    fun showMsg(msg: String, split: Boolean = true){
        clear()
        if (split) {
            val list = msg.split(" ")
            if (list.size == 2) {
                displayWrite(list.first(), DisplayMode.CENTER)
                displayWrite(list.last(), DisplayMode.CENTER, USER_HEIGHT)
            } else {
                val mid = list.size / 2
                var up = ""
                for (c in 0..mid)
                    up += "${list[c]} "
                var down = ""
                for (c in mid + 1..list.lastIndex)
                    down += "${list[c]} "
                if (up == down)
                    displayWrite(up, DisplayMode.CENTER)
                else {
                    displayWrite(up, DisplayMode.CENTER)
                    displayWrite(down, DisplayMode.CENTER, USER_HEIGHT)
                }
            }
        }else
            displayWrite(msg, DisplayMode.CENTER, USER_HEIGHT)
        clearCursor()
    }
    private fun displayWrite(
        data: String, displayMode: DisplayMode,
        line: Int? = null, column: Int? = null
    ) =
        when (displayMode) {
            DisplayMode.LEFT -> {
                val cl = column ?: 0
                val ln = line   ?: 0
                LCD.cursor(ln, cl)
                LCD.write(data)
            }
            DisplayMode.CENTER -> {
                val cl = column ?: 0
                val ln = line   ?: 0
                LCD.cursor(ln, (COLS-data.length)/2+cl)
                LCD.write(data)
            }
            DisplayMode.RIGHT -> {
                val cl = column ?: 0
                val ln = line   ?: 0
                LCD.cursor(ln, COLS-data.length-cl)
                LCD.write(data)
            }
        }
}

fun main() {
    HAL.init()
    KBD.init()
    SerialEmitter.init()
    LCD.init()
    TUI.init()
    TUI.showMsg("Login Failed", DO_NOT_SPLIT)
}