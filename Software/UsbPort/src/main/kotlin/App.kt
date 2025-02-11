import isel.leic.utils.Time
import kotlin.system.exitProcess

const val DO_NOT_SPLIT = false
const val WAIT_TIME = 3000
object App{
    fun init(){
        HAL.init()
        KBD.init()
        SerialEmitter.init()
        LCD.init()
        DoorMechanism.init()
        TUI.init()
        FileAccess.init()
        Users.init()
        Maintenance.init()
        DoorMechanism.close(15)
    }
    private fun waitTime(wait: Int){
        val begTime = Time.getTimeInMillis()+wait
        while (begTime >= Time.getTimeInMillis()) {
            val key = TUI.getKey()
            if (key != NONE.toChar())
                break
        }
    }
    private fun changePassword(uId: Int, key: Char): Code{
        if (key == '#'){
            TUI.showMsg("Change PIN? (Yes=*)")
            val yesNo = TUI.waitKey()
            if (yesNo == '*'){
                val newPassword = TUI.waitInput(PIN_SIZE, "New Password").toIntOrNull() ?: return Code.INVALID_PIN
                val confirmPassword = TUI.waitInput(PIN_SIZE, "Confirm the PIN").toIntOrNull() ?: return Code.INVALID_PIN
                if (newPassword == confirmPassword){
                    Users.changePassword(uId, newPassword)
                    TUI.showMsg("New PIN saved successfully")
                    waitTime(WAIT_TIME/2)
                    return Code.SUCCESS
                }
            }
        }
        return Code.FAILED
    }
    fun maintenance(){
        var maintenanceMade = false
        if (Maintenance.maintenanceMode()) TUI.showMsg("Out of Service")
        while (Maintenance.maintenanceMode()){
            maintenanceMade = true
            println("Select the operation mode:")
            val modeList = listOf("Add user", "Remove user", "Add message", "Turn off")
            modeList.forEachIndexed { idx, s ->
                println("$idx -> $s")
            }
            when(readln().toIntOrNull()){
                0 -> {
                    print("Digit the user name: ")
                    val name = readln().trim()
                    print("Digit the pin: ")
                    var pin = readln().toIntOrNull()
                    while (pin == null){
                        print("Invalid pin. Try again: ")
                        pin = readln().toIntOrNull()
                    }
                    val code = Users.add(name, pin)
                    println(code)
                }
                1 -> {
                    print("Digit the DID: ")
                    var uId = readln().toIntOrNull()
                    while (uId == null){
                        print("Invalid UID. Try again: ")
                        uId = readln().toIntOrNull()
                    }
                    val user = Users.getUser(uId)
                    if (user == null)
                        println("UID not found")
                    else{
                        println("Do you want tho proceed? ")
                        var choice = readln().trim().lowercase()
                        while (choice != "yes" && choice != "no") {
                            println("Invalid answer. Try again")
                            choice = readln().trim().lowercase()
                        }
                        if (choice == "yes")
                            Users.remove(uId)
                    }
                }
                2 -> {
                    print("Digit the UID: ")
                    var uId = readln().toIntOrNull()
                    while (uId == null) {
                        print("Invalid UID. Try again: ")
                        uId = readln().toIntOrNull()
                    }
                    print("Digit the message: ")
                    val msg = readln().trim()
                    val code = Users.addMsg(uId, msg)
                    println(code)
                }
                3 -> {
                    print("Do you want to close the program? ")
                    var choice = readln().trim().lowercase()
                    while (choice != "yes" && choice != "no") {
                        print("Invalid answer. Try again: ")
                        choice = readln().trim().lowercase()
                    }
                    if (choice == "yes"){
                       Users.closure()
                       Logs.closure()
                       exitProcess(0)
                    }
                }
                else -> continue
            }
        }
        if (maintenanceMade) println("Exiting maintenance mode...")
    }
    fun login(){
        val uID = TUI.waitInput(UIN_SIZE).toIntOrNull() ?: return
        val pin = TUI.waitInput(PIN_SIZE).toIntOrNull()
        val log = Users.login(uID, pin)
        if (log.code == Code.SUCCESS){
            if (log.msg != null) TUI.showMsg(log.msg) else TUI.emptyScreen()
            val begTime = Time.getTimeInMillis()+WAIT_TIME
            while (begTime >= Time.getTimeInMillis()) {
                val key = TUI.getKey()
                val passwordCode = changePassword(uID, key)
                val code = Users.removeMsg(key, uID)
                if (code == Code.SUCCESS) {
                    TUI.showMsg("Message removed", DO_NOT_SPLIT)
                    waitTime(WAIT_TIME/2)
                }
                if (code == Code.SUCCESS || key != NONE.toChar() || passwordCode == Code.SUCCESS || passwordCode == Code.INVALID_PIN)
                    break
            }
            Logs.addLog(uID)
            DoorMechanism.open(8)
            TUI.showMsg("Opening Door...", DO_NOT_SPLIT)
            while (!DoorMechanism.finished());
            TUI.showMsg("Door opened", DO_NOT_SPLIT)
            waitTime(WAIT_TIME/2)
            DoorMechanism.close(4)
            TUI.showMsg("Closing Door...", DO_NOT_SPLIT)
            while (!DoorMechanism.finished());
            TUI.showMsg("Door closed", DO_NOT_SPLIT)
            waitTime(WAIT_TIME/2)
        }
        else {
            TUI.showMsg("Login Failed", DO_NOT_SPLIT)
            waitTime(WAIT_TIME)
        }
    }
}
fun main(){
    App.init()
    while (true){
        App.maintenance()
        App.login()
    }
}