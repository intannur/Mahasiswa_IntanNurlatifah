<%@page import="crud.Mahasiswa"%>
<%
    Mahasiswa m = new Mahasiswa();
    m.setNim(request.getParameter("nim"));
    m.setNama(request.getParameter("nama"));
    m.setNilai(Integer.parseInt(request.getParameter("nilai")));
    m.tambah();

    request.setAttribute("mahasiswa", m);
    RequestDispatcher rd = request.getRequestDispatcher("mahasiswa.tambah.view.jsp");
    rd.forward(request, response);
%>
