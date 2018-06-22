<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%
session.removeAttribute("GR_NO");
session.removeAttribute("GR_CAT");
response.sendRedirect("index.jsp");
%>