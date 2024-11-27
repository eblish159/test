<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"  %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<html>
<head>
    <title>Code  조회</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<script src="/js/jQuery-2.1.4.min.js"></script>
<script src="/js/app/code-group.js"></script>

<body>
    안녕하세요
    <br>
    <h3>코드 그룹</h3>
    <br>
    <div>
        <button id="codeGroupListBtn">LIST</button>
        <button id="notice_listBtn">Region</button>
        <button>Search</button>
    </div>

    <table border="1"  align="center"  width="80%">
        <tr align="center"   bgcolor="lightgreen">
          <td ><b>번호</b></td>
          <td><b>구분</b></td>
          <td><b>제목</b></td>
          <td><b>등록일자</b></td>
       </tr>

     <c:forEach var="codeGroup" items="${codeGroupList}" >
       <tr align="center">
          <td>${codeGroup.n_idx}</td>
          <td>${codeGroup.n_category}</td>
          <td>${codeGroup.n_title}</td>
          <td>${codeGroup.n_update}</td>
        </tr>
      </c:forEach>
    <br>
    <div id="notice_listdata">
    </div>
</body>
</html>