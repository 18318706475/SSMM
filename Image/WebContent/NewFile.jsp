
<%@page contentType="text/html;charset=gb2312" %>
<%@page import="java.sql.*,java.io.*" %>
<html>
<head>
<title>
	读取图片！
</title>
<body>

<% 
String JDriver="com.microsoft.sqlserver.jdbc.SQLServerDriver";//SQL数据库引擎

//String connectDB=  "jdbc:sqlserver://192.168.10.30:1433;DatabaseName=interfaceDB";//数据源 
String connectDB=  "jdbc:sqlserver://192.168.10.30:1433;DatabaseName=yjtj";//数据源

try

{

 Class.forName(JDriver);//加载数据库引擎，返回给定字符串名的类

}catch(ClassNotFoundException e)

{

 //e.printStackTrace();

 System.out.println("加载数据库引擎失败");

 System.exit(0);

}     

System.out.println("数据库驱动成功");
String user="sa";

String password="wang6688+";

Connection conn=DriverManager.getConnection(connectDB,user,password);//连接数据库对象

System.out.println("连接数据库成功");
FileInputStream str = new FileInputStream("d:/imageyjtj/JPEG/0009769.jpg");
//String sql = "update resdata set resImg =? where resNo='0012438' and bz like '%R01.jpg'";
String sql = "update T_VPSYS_Table set IMGStrings =? WHERE PatientID='0009769'";
PreparedStatement pstmt = conn.prepareStatement(sql);
//pstmt.setString(1,tt);
pstmt.setBinaryStream(1,str,str.available());
pstmt.execute();
pstmt.close();
conn.close();
System.out.println("数据库tupian成功");
%>
</body>
</html>



<span style="color: #FF0000;">说明一下：能实现，但是读取的时候速度很慢，而且网页常常会死掉？？这个肯定不能接受的？？请问怎样实现比较好！！是不是我
哪个东西没关掉？？



</span>
