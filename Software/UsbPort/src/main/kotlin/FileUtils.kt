import java.io.BufferedReader
import java.io.FileReader
import java.io.PrintWriter
import java.io.FileWriter
import java.io.BufferedWriter

fun createReader(fileName: String): BufferedReader = BufferedReader(FileReader(fileName))
fun createFileWriter(fileName: String): BufferedWriter = BufferedWriter(FileWriter(fileName))
fun createWriter(fileName: String): PrintWriter = PrintWriter(fileName)

/** Usage Example
 *  File on the project Directory:
 *  Copy Input File to OutputFile.
 * **/

fun main( ){
    val br=createReader("test.txt")
    val pw=createWriter("output.txt")
    var line:String?
    line=br.readLine()
    while(line!=null){
        // val words = str.split(Regex("\\W"))
        val words = line.split(Regex("\\P{L}+"))
        pw.println(words)
        line=br.readLine()
    }
    pw.close()
}