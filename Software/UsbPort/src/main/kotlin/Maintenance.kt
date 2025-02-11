private const val MAINTENANCE = 0x80
object Maintenance {
    fun init(){}
    fun maintenanceMode(): Boolean =
        HAL.readBits(MAINTENANCE) != 0
}