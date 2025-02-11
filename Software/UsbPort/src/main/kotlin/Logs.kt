import java.time.LocalDate
import java.time.LocalTime

object Logs {
    fun addLog(uId: Int) {
        val showUId = when {
            uId < 10 -> "00$uId"
            uId < 100 -> "0$uId"
            else -> uId
        }
        FileAccess.logRegister("${LocalDate.now()}$DEL${LocalTime.now()}$DEL$showUId")
    }
    fun closure() = FileAccess.close()
}