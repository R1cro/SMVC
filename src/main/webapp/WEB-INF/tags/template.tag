<%@ tag description="Template Tag" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!doctype>
<html>
<head>

    <link href="<c:url value="/resources/css/smvc.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/script/smvc.js" />"></script>

    <title>Person List</title>

</head>
<body>
<div class="content" align="center">
    <h1>Person List</h1>
    <div class="login-link-container">
              <sec:authorize access="isAnonymous()">
                  <p>

                      Click that link -> <a href="/spring_security_login">Sign In</a>
                  </p>
              </sec:authorize>
              <sec:authorize access="isAuthenticated()">
                  <a href="/j_spring_security_logout">Sign Out</a>
              </sec:authorize>
          </div>
    <jsp:doBody/>
</div>
</body>
</html>