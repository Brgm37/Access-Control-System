import java.io.BufferedWriter

const val USERS = "data/users.txt"
const val LOGS = "data/log.txt"
const val DEL = '$' // delimiter

object FileAccess {
    private var logs = mutableListOf<String>()
    private var logWriter: BufferedWriter? = null
    fun init(){
        val save = createReader(LOGS)
        var line = save.readLine()
        while (line != null){
            logs.add(line)
            line = save.readLine()
        }
        save.close()
        logWriter = createFileWriter(LOGS)
        logs.forEach {
            logWriter?.write(it)
            logWriter?.newLine()
        }
    }
    fun add(data: List<String>){
        val wr = createWriter(USERS)
        data.forEach { wr.println(it) }
        wr.close()
    }
    fun getUsers(): List<String>{
        val rd = createReader(USERS)
        val list = mutableListOf<String>()
        while (true) {
            val line = rd.readLine() ?: break
            list.add(line)
        }
        return list
    }
    fun logRegister(data: String){
        logWriter?.write(data)
        logWriter?.newLine()
    }
    fun close(){
        logWriter?.close()
    }
}