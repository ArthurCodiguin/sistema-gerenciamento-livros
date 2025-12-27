<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="packFramework.Framework" %>

<html>
<body>
<%
    String codigo = request.getParameter("codigoLivro");

    if (codigo != null) {
        String sql = "DELETE FROM TabLivros WHERE codigoLivro = ?";
        boolean ok = Framework.executar(sql, codigo);

        if (ok) {
            out.println("<h3>✅ Livro excluído com sucesso!</h3>");
        } else {
            out.println("<h3>❌ Erro ao excluir livro.</h3>");
        }
    } else {
        out.println("<h3>Informe o código do livro para excluir.</h3>");
    }
%>
</body>
</html>
