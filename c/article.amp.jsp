
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
    String serverName = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
    Integer articleId = 0;
    if (request.getParameter("id").matches("\\d+")) {
      articleId = Integer.parseInt(request.getParameter("id"));
      pageContext.setAttribute("articleId", articleId);
    }
%>
<!doctype html>
<html ⚡>
<head>
    <meta charset="utf-8">
    <title>Lorem Ipsum | PublisherName</title>
    <link rel="canonical" href="/article.jsp?id=<%=request.getParameter("id")%>" >
    <meta name="viewport" content="width=device-width,minimum-scale=1,initial-scale=1">
    <script id="amp-access" type="application/json">
        {
            "authorization": "<%= serverName %>/amp-authorization.json?rid=READER_ID&url=CANONICAL_URL&referer=DOCUMENT_REFERRER&viewer=VIEWER&_=RANDOM",
            "pingback": "<%= serverName %>/amp-pingback?rid=READER_ID&url=CANONICAL_URL&referer=DOCUMENT_REFERRER&viewer=VIEWER",
            "login": "<%= serverName %>/amp-login?rid=READER_ID&url=CANONICAL_URL&viewer=VIEWER"
        }
    </script>
    <link href='https://fonts.googleapis.com/css?family=Georgia|Open+Sans|Roboto' rel='stylesheet' type='text/css'>
    <style amp-custom>

    </style>

    <script async custom-element="amp-analytics" src="https://cdn.ampproject.org/v0/amp-analytics-0.1.js"></script>
    <script async custom-element="amp-access" src="https://cdn.ampproject.org/v0/amp-access-0.1.js"></script>
    <script async custom-element="amp-mustache" src="https://cdn.ampproject.org/v0/amp-mustache-0.1.js"></script>

    <style>body {opacity: 0}</style><noscript><style>body {opacity: 1}</style></noscript>
    <script async src="https://cdn.ampproject.org/v0.js"></script>
</head>
<body>
    <main role="main">
        <article>
            <header>
                <h1>Article #<%=articleId%></h1>
                <a href="<%= serverName %>/">[Home]</a>
            </header>
            <section amp-access="access">
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    Curabitur ullamcorper turpis vel commodo scelerisque. Phasellus
                    luctus nunc ut elit cursus, et imperdiet diam vehicula.
                    Duis et nisi sed urna blandit bibendum et sit amet erat.
                    Suspendisse potenti. Curabitur consequat volutpat arcu nec
                    elementum. Etiam a turpis ac libero varius condimentum.
                    Maecenas sollicitudin felis aliquam tortor vulputate,
                    ac posuere velit semper.
                </p>
            </section>
            <section amp-access="views > 1">
              <template amp-access-template type="amp-mustache">
                   You are reading {{views}} of {{maxViews}} free articles this month!
              </template>
            </section>

            <section amp-access="NOT access">
                <a on="tap:amp-access.login">Login to read more!</a>
            </section>
            <br/>
          <c:if test="${articleId > 1}">
            <a href="<%= serverName %>/c/article.amp.jsp?id=<%= articleId - 1 %>">Previous</a>
          </c:if>
          <c:if test="${articleId < 100}">
            <a href="<%= serverName %>/c/article.amp.jsp?id=<%= articleId + 1 %>">Next</a>
          </c:if>
        </article>
    </main>
</body>
</html>
