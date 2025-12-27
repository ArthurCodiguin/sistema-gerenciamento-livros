package packLogar;

public class CadastroLivros {
    private static int codigoLivro;
    private static String titulo;
    private static String autor;
    private static String editora;
    private static int ano;
    private static String localizacao;
    
    public static void setCodigoLivro(String _codigoLivro) {codigoLivro = Integer.parseInt(_codigoLivro);}
    public static void setTitulo(String _titulo) {titulo = _titulo;}
    public static void setAutor(String _autor) {autor = _autor;}
    public static void setEditora(String _editora) {editora = _editora;}
    public static void setAno(String _ano) {ano = Integer.parseInt(_ano);}
    public static void setLocalizacao(String _localizacao) {localizacao = _localizacao;}
    
    public static int getCodigoLivro() {return codigoLivro;}
    public static String getTitulo() {return titulo;}
    public static String getAutor() {return autor;}
    public static String getEditora() {return editora;}
    public static int getAno() {return ano;}
    public static String getLocalizacao() {return localizacao;}
}
