@WebServlet(name = "MoleculeServlet", urlPatterns = "/molecule")
public class MoleculeServlet extends HttpServlet {

    private MoleculeDao moleculeDao;

    public void init() {
        // Suponha que MoleculeDao seja uma classe que implementa o padrão DAO.
        moleculeDao = new MoleculeDao();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        // Suponha que o método findAll() retorna uma lista de moléculas do banco de dados.
        List<Molecule> moleculeList = moleculeDao.findAll();

        out.println("<html><body>");
        out.println("<h2>Lista de Moléculas</h2>");
        
        for (Molecule molecule : moleculeList) {
            out.println("<p>ID da Molécula: " + molecule.getId() + ", Nome: " + molecule.getName() + ", Fórmula Química: " + molecule.getChemicalFormula() + "</p>");
        }

        out.println("</body></html>");
    }
}