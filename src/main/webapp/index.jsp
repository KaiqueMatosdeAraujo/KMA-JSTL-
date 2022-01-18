

 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.text.SimpleDateFormat"%>
    


  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- DECLARATION -->
	
	
	<%!
	String today(){
		java.text.SimpleDateFormat dt = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
		return dt.format(new java.util.Date());
	}
	%>
	
	<c:set var="variavel" value="Primeira p�gina JSP utilizando JSTL"/>
	<c:out value="${variavel}"/>
	<c:set var="formatar" value="true"/>
	<c:set var="d1" value="<%=new java.util.Date() %>"/>
	<h1>A data de hoje �: <c:out value="${d1}"/></h1>
	<h1>A data de hoje �: <fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${d1}"/></h1>
	<c:if test="${formatar == true}">
		<p>Vari�vel formatar = <c:out value="${formatar}"/><p>
	</c:if>	
	<h1>A data de hoje �: <c:choose>
							<c:when test="${formatar == true}">
								<c:out value="<%=today() %>"/>
							</c:when>
							<c:otherwise>
								<c:out value="${d1}"/>
							</c:otherwise>
						  </c:choose></h1>



<!--  Parte 2 -->


	
<c:set value="10" var="valor"/>  
<c:choose>  
<c:when test="${valor%2==0}">  
<c:out value="${valor} � um numero Par"/> 
</c:when>  
<c:otherwise>  
<c:out value="${valor} � um numero Impar "></c:out>  
</c:otherwise>  
</c:choose> 
	
	
	<c:set var="numeroInicial"  value="1033000000"/>  
<p>O valor �: <c:out value="${numeroInicial}"/></p>  
<c:remove var="numeroInicial"/>  
<p>Ap�s a utiliza��o da tag "remove", o valor passou a ser: <c:out value="${numeroInicial}"/></p>  

<c:set var="instrutor" value="1"/>  
<c:if test="${instrutor == 1} ">  
   <p><c:out value="${instrutor} Ol� " /><p> 
</c:if>
<H1> </H1>
</body>
</html>