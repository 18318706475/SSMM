
<%@page contentType="text/html;charset=gb2312" %>
<%@page import="java.sql.*,java.io.*" %>
<html>
<head>
<title>
	��ȡͼƬ��
</title>
<body>

<% 
String JDriver="com.microsoft.sqlserver.jdbc.SQLServerDriver";//SQL���ݿ�����

//String connectDB=  "jdbc:sqlserver://192.168.10.30:1433;DatabaseName=interfaceDB";//����Դ 
String connectDB=  "jdbc:sqlserver://192.168.10.30:1433;DatabaseName=yjtj";//����Դ

try

{

 Class.forName(JDriver);//�������ݿ����棬���ظ����ַ���������

}catch(ClassNotFoundException e)

{

 //e.printStackTrace();

 System.out.println("�������ݿ�����ʧ��");

 System.exit(0);

}     

System.out.println("���ݿ������ɹ�");
String user="sa";

String password="wang6688+";

Connection conn=DriverManager.getConnection(connectDB,user,password);//�������ݿ����

System.out.println("�������ݿ�ɹ�");
FileInputStream str = new FileInputStream("d:/imageyjtj/JPEG/0009769.jpg");
//String sql = "update resdata set resImg =? where resNo='0012438' and bz like '%R01.jpg'";
String sql = "update T_VPSYS_Table set IMGStrings =? WHERE PatientID='0009769'";
PreparedStatement pstmt = conn.prepareStatement(sql);
//pstmt.setString(1,tt);
pstmt.setBinaryStream(1,str,str.available());
pstmt.execute();
pstmt.close();
conn.close();
System.out.println("���ݿ�tupian�ɹ�");
%>
</body>
</html>



<span style="color: #FF0000;">˵��һ�£���ʵ�֣����Ƕ�ȡ��ʱ���ٶȺ�����������ҳ������������������϶����ܽ��ܵģ�����������ʵ�ֱȽϺã����ǲ�����
�ĸ�����û�ص�����



</span>
