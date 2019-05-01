# Quick scripts
Some quick scripts I usually need every day and somehow I forget. IT CAN BE IMPROVED 

## How to create a singleton object
```
class MyClass {
companion object {
        private val TAG: String = MyClass::class.java.simpleName
        
        @Volatile
        private var singletonObject: MyClass? = null

        internal fun getInstance(): MyClass? {
            
            if (singletonObject == null) {
                synchonized(MyClass::class.java) {
                    if(singletonObject == null) {
                         Log.d("creating a new instance")
                         singletonObject = MyClass()
                    }     
                }
            }
            return singletonObject
        }
    }
}    

```
## How to read a file line by line 
```
companion object {
        private val TAG: String = MyClass::class.java.simpleName

        fun getFileContents(assets: AssetManager, fileName: String): String {
            val result = StringBuilder()
            var reader: BufferedReader? = null
            val possibleError = try {
                reader = BufferedReader(java.io.InputStreamReader(assets.open(fileName)))
                do {
                    val mLine = reader.readLine()
                    if (mLine != null)
                        result.append(mLine)
                } while (mLine != null)
            } catch (e: IOException) {
                ERROR_FOUND
            } finally {
                reader?.close()
            }

            if (possibleError == ERROR_FOUND)
                throw IOException()

            Log.d(TAG, result.toString())
            return result.toString()
        }
    }
}    
```
## How to create a new Room Database intance 
```
//always use the application context or the 
val myRoomDatabaseClass : MyRoomDatabaseClass = Room.databaseBuilder(context.applicationContext, MyRoomDatabaseClass::class.java, "database_name").build()    
```
