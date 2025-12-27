<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="packFramework.Framework" %>

<html>
<body>
<%
    String codigo = request.getParameter("codigoLivro");

    if (codigo != null && !codigo.isEmpty()) {
        String sql = "SELECT * FROM TabLivros WHERE codigoLivro = ?";
        ResultSet rs = Framework.consultar(sql, codigo);

        if (rs != null && rs.next()) {
            out.println("<h3>📘 Dados do Livro:</h3>");
            out.println("Código: " + rs.getInt("codigoLivro") + "<br>");
            out.println("Título: " + rs.getString("titulo") + "<br>");
            out.println("Autor: " + rs.getString("autor") + "<br>");
            out.println("Editora: " + rs.getString("editora") + "<br>");
            out.println("Ano: " + rs.getInt("ano") + "<br>");
            out.println("Localização: " + rs.getString("localizacao") + "<br>");
        } else {
            out.println("<h3>❌ Livro não encontrado!</h3>");
        }
    } else {
        out.println("<h3>⚠️ Informe o código do livro para consultar.</h3>");
    }
%>
</body>
</html>
