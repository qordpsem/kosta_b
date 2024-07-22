<%@page import="com.kosta.vo.DeptVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.kosta.dao.DeptDAO"%>
<%@ page language="java" contentType="application/json; charset=UTF-8" pageEncoding="UTF-8"%>
<%

Thread.sleep(5000);
String data = "[";
DeptDAO dao = new DeptDAO();
ArrayList<DeptVO> list = dao.findAll();
for (DeptVO d : list) {
	data += "{";
	data += "\"dno\":";
	data += "\"" + d.getDno() + "\",";
	data += "\"dname\":";
	data += "\"" + d.getDname() + "\",";
	data += "\"dloc\":";
	data += "\"" + d.getDloc() + "\"";
	data += "},";
}
data = data.substring(0, data.length() - 1);
data += "]";
%>
<%=data%>