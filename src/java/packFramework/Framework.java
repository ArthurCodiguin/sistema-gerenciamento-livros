package packFramework;

import java.sql.*;

public class Framework {

    private static Connection con;

    // Abre a conexão
    private static void conecta() {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            con = DriverManager.getConnection(
                "jdbc:sqlserver://localhost:1433;databaseName=DBLivros;encrypt=false;",
                "sa", "123456789"
            );
        } catch (Exception e){
            System.err.println("Erro de conexão: " + e.getMessage());
        }
    }

    // Fecha a conexão
    private static void desconecta() {
        try {
            if (con != null && !con.isClosed()) con.close();
        } catch (Exception e) {
            System.err.println("Erro ao desconectar: " + e.getMessage());
        }
    }

    // INSERIR / ATUALIZAR / EXCLUIR
    public static boolean executar(String sql, Object... parametros) {
    conecta();
    try (PreparedStatement st = con.prepareStatement(sql)) {
        for (int i = 0; i < parametros.length; i++) {
            st.setObject(i + 1, parametros[i]);
        }
        int linhasAfetadas = st.executeUpdate();
        desconecta();
        return linhasAfetadas > 0;
    } catch (Exception e) {
        System.err.println("Erro ao executar: " + e.getMessage());
        desconecta();
        return false;
    }
}


    // CONSULTAR
    public static ResultSet consultar(String sql, Object... parametros) {
        conecta();
        try {
            PreparedStatement st = con.prepareStatement(sql);
            for (int i = 0; i < parametros.length; i++) {
                st.setObject(i + 1, parametros[i]);
            }
            return st.executeQuery();
        } catch (Exception e) {
            System.err.println("Erro ao consultar: " + e.getMessage());
            desconecta();
            return null;
        }
    }
}
