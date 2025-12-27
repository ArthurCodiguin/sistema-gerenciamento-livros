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

    if (codigo != null) {
        String sql = "INSERT INTO TabLivros (codigoLivro, titulo, autor, editora, ano, localizacao) VALUES (?, ?, ?, ?, ?, ?)";

        boolean ok = Framework.executar(sql, codigo, titulo, autor, editora, ano, localizacao);

        if (ok) {
            out.println("<h3>✅ Livro cadastrado com sucesso!</h3>");
        } else {
            out.println("<h3>❌ Erro ao cadastrar livro.</h3>"); 
            
        }
    } else {
        out.println("<h3>Preencha o formulário de cadastro.</h3>");
    }
%>
</body>
</html>
