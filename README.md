# mysql_udf #

mysql udf eval/cmd shell

**可能遇到的问题**

 * errno 126
       
        检查x86/x64是否弄混，mysql的版本是否对应，是否缺少Microsoft Visual C++ redistrubutable

 * errno 193

        文件格式错误，udf.dll/udf.so文件导出错误
