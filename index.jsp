<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Article List</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
  </head>
  <body>
  <main role="main">
      <h1><a href="/static/"> Static Samples here</a></h1>
      <h1>Article List</h1>
      <ul>
      <% for (int i = 1; i <= 100; i++) { %>
        <li><a href="/c/article.amp.jsp?id=<%= i %>">Article #<%= i %></a></li>
      <% } %>
      </ul>
  </main>

  </body>
</html>
