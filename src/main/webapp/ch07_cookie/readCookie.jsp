<%@page import="java.net.URLDecoder"%>
<%@page import="org.apache.naming.java.javaURLContextFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	// request 기본 객체로부터 쿠키 얻어오기
    	Cookie[] cookies = request.getCookies();
    	String userName = "없음";
    	
    	if(cookies != null) {
    		// 쿠키가 여러개 있을 수 있기 때문에
    		for(Cookie cookie: cookies) {
    			if(cookie.getName().equals("userName")){
    				userName = URLDecoder.decode(cookie.getValue(), "utf-8");
    				break;
    			}
    		}
    	}
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>readCookie.jsp</title>
</head>
<body>
	<h3>쿠키에 저장된 사용자 이름 : <%= userName %></h3>
</body>
</html>