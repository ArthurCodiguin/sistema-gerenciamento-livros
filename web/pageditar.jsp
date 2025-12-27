<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="packFramework.Framework" %>

<html>
<body>
<%
    String codigo = request.getParameter("codigoLivro");
    String titulo = request.getParameter("titulo");
    String autor = request.getParameter("autor");
    String editora = request.getParameter("editora");
    String ano = request.getParameter("ano");
    String localizacao = request.getParameter("localizacao");

    if (codigo != null && titulo != null) {
        String sql = "UPDATE TabLivros SET titulo=?, autor=?, editora=?, ano=?, localizacao=? WHERE codigoLivro=?";
        boolean ok = Framework.executar(sql, titulo, autor, editora, ano, localizacao, codigo);

        if (ok) {
            out.println("<h3>✅ Livro atualizado com sucesso!</h3>");
        } else {
            out.println("<h3>❌ Erro ao atualizar livro.</h3>");
        }
    } else {
        out.println("<h3>Preencha todos os campos para editar o livro.</h3>");
    }
%>
</body>
</html>
