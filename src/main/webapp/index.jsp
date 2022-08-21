<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <style>
        td {
            color: white;
            text-align: center;
        }

        .colorBlue {
            border: 1px solid blue;
            background-color: blue;
        }

        .colorRed {
            border: 1px solid red;
            background-color: red;
        }
    </style>
</head>
<body>
<h1>Tabla de multiplicar</h1>
<table>
    <% int bandera = 1; %>
    <% for (int i = 1; i <= 10; i++) { %>
    <tr>
        <% for (int j = 1; j <= 10; j++) { %>
        <td class="<%= j * i == bandera ? "colorRed" : "colorBlue" %>">
            <%= i * j %>

            <% if (bandera == 10) { %>
            <% bandera = 1; %>
            <% } %>

            <% bandera++; %>
        </td>
        <% } %>
    </tr>

    <% } %>
</table>
</body>
</html>
