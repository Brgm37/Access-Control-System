// Error Codes
enum class Code {
                SUCCESS,
                FAILED,
                INVALID_NAME,
                VALID_NAME,
                MAX_NUMBER_OFF_USERS_ACHIEVED,
                INVALID_PIN
}

private const val MAX_USERS = 1000

object Users {

    private var list = hashMapOf<Int, User>()

    fun init() {
        getUsers()
    }

    data class Log(
        val code: Code,
        val msg: String?
    )
    data class User(
        var uID: Int,
        val uName: String,
        var pwd: Int,
        var desc: String?
    )

    private fun getUsers() {
        val data = FileAccess.getUsers()
        for (i in data) {
            val x = i.split(DEL)
            val msg = if (x[3] == "null") null else x[3]
            val user = User(x[0].toInt(), x[1], x[2].toInt(), msg)
            list[user.uID] = user
        }
    }

    private fun validate(user: String): Code = if (user.length <= 16) Code.VALID_NAME else Code.INVALID_NAME

    fun remove(uID: Int): Code{
        list[uID] ?: return Code.FAILED
        list.remove(uID)
        return Code.SUCCESS
    }
    fun changePassword(uID: Int, newPass: Int) {
        list[uID]?.pwd = newPass
    }
    fun add(user: String, pin: Int): Code {
        if (validate(user) == Code.INVALID_NAME) return Code.INVALID_NAME
        if (list.size < MAX_USERS) {
            val newUser = User(0, user, pin, "Hello $user")
            for (uID in 0 until MAX_USERS) {
                newUser.uID = uID
                val validation = list.putIfAbsent(uID, newUser)
                val uid = when {
                    uID < 10 -> "00$uID"
                    uID < 100 -> "0$uID"
                    else -> uID
                }
                if (validation == null) {
                    println("New user added successfully, whit the UID = $uid.")
                    return Code.SUCCESS
                }
            }
            return Code.MAX_NUMBER_OFF_USERS_ACHIEVED
        } else
            return Code.FAILED
    }
    fun login(uID: Int?, pin: Int?): Log {
        if (uID == null || pin == null) return Log(Code.FAILED, null)
        val user = list[uID] ?: return Log(Code.FAILED, null)
        return if (user.pwd != pin)
            Log(Code.FAILED, null)
        else
            Log(Code.SUCCESS, user.desc)
    }
    fun removeMsg(char: Char, uID: Int?): Code {
        if (uID == null) return Code.FAILED
        val user = list[uID] ?: return Code.FAILED
        return if (char == '*') {
            user.desc = null
            Code.SUCCESS
        } else
            Code.FAILED
    }
    fun getUser(uID: Int) = list[uID]
    fun addMsg(uID: Int, msg: String): Code{
        val user = list[uID] ?: return Code.FAILED
        user.desc = msg
        return Code.SUCCESS
    }
    fun closure(){
        val users = list.map {
            val uid = when {
                it.value.uID < 10 -> "00${it.value.uID}"
                it.value.uID < 100 -> "0${it.value.uID}"
                else -> it.value.uID
            }
            "${uid}$DEL${it.value.uName}$DEL${it.value.pwd}$DEL${it.value.desc}"
        }
        FileAccess.add(users)
    }
}