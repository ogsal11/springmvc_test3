<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<form method="post" action="/infra/code/codeInst">

<select name="infrCodeGroup_ifcgSeq">
	<c:forEach items="${list}" var="item2" varStatus="status">
	<option value="<c:out value="${item2.ifcgSeq }"/>"><c:out value="${item2.ifcgName }"/>(<c:out value="${item2.ifcgSeq }"/>)
	</c:forEach>
</select>

	<input type="text" name="ifcdName" placeholder="아이디">
	<input type="submit" value="제출">
</form>