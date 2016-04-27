<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Publisher Login</title>
    <link href='https://fonts.googleapis.com/css?family=Georgia|Open+Sans|Roboto' rel='stylesheet' type='text/css'>
    <style>
        body {
            margin: 0;
            font-family: 'Georgia', Serif;
        }

        .article-body {
        }

        .brand-logo {
            font-family: 'Open Sans';
            background: #eee;
            margin: 0 0 8px 0;
            padding: 15px;
            overflow: hidden;
        }

        .title {
            margin: 8px 0;
            padding: 15px;
            font-size: larger;
        }

        form {
            margin: 15px;
        }

        .form-line {
            margin: 8px 0;
        }
    </style>
</head>
<body>
<header>
    <div class="brand-logo">
        PublisherLogo
    </div>
    <div class="title">
        Login
    </div>
</header>

<form method=post action="login">
    <div class=form-line>
        <div class=label>Email:</div>
        <input type=email name=email>
    </div>
    <div class=form-line>
        <div class=label>Password:</div>
        <input type=password name=password>
    </div>
    <div class=form-line>
        <input type=submit value=Login>
    </div>
    <input name=origin value="<%=request.getAttribute("amp.origin")%>">
    <input name=returnurl value="<%=request.getParameter("return")%>" type=hidden>
    <input name=rid value="<%=request.getParameter("rid")%>" type=hidden>
</form>

<script>
    var queryMap = {};
    var query = window.location.search;
    if (query && query[0] == '?') {
        query = query.substring(1);
    }
    if (query) {
        var params = query.split('&');
        params.forEach(function(param) {
            var eq = param.indexOf('=');
            var name = decodeURIComponent((eq != -1 ? param.substring(0, eq) : param).trim());
            var value = decodeURIComponent((eq != -1 ? param.substring(eq + 1) : '').trim());
            queryMap[name] = value;
        });
    }
    if (queryMap['return']) {
        document.querySelector('[name=returnurl]').value = queryMap['return'];
    }
    if (queryMap['rid']) {
        document.querySelector('[name=rid]').value = queryMap['rid'];
    }
</script>
</body>
</html>
