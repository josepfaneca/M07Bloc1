<%@page import="java.util.Random"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<String> myBlocks = new ArrayList();
    myBlocks.add("U");
    myBlocks.add("Dos");
    myBlocks.add("Tres");
    myBlocks.add("Quatre");
    myBlocks.add("Cinc");
    myBlocks.add("Sis");
    myBlocks.add("Set");
    myBlocks.add("Vuit");
    myBlocks.add("Nou");
    myBlocks.add("Deu");
    myBlocks.add("Onze");
    myBlocks.add("Dotze");
    Random randomGenerator = new Random();
    Random randomColor = new Random();
    int from12 = 0;

%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    </head>
    <body>

        <%for (int idx = 1; idx <= 3; ++idx) {%>
        <%for (String unblock : myBlocks) {%>

        <%if (from12 < 12) { %>
        <%
            int randomInt = 1;
            if (from12 < 11) {
                randomInt = randomGenerator.nextInt(11 - from12) + 1;
          
            }
            int color1 = randomColor.nextInt(255);
            int color2 = randomColor.nextInt(255);
            int color3 = randomColor.nextInt(255);
        %>
        <div class="col-md-<%= randomInt%>" style="border-style: solid;background-color: rgb(<%= color1%>,<%= color2%>,<%= color3%>);"><%= unblock%></div>
        <% from12 = from12 + randomInt;%>
        <%}%>                
        <%}%>
        <%from12 = 0;%>
        <%}%>
    </body>
</html>
