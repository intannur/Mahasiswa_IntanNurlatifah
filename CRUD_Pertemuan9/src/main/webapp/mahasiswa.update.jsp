<%@page import="crud.Mahasiswa"%>
<%
    Mahasiswa m = new Mahasiswa();
    m.setNim(request.getParameter("nim"));
    m.setNama(request.getParameter("nama"));
    m.setNilai(Integer.parseInt(request.getParameter("nilai")));
    m.update();

    request.setAttribute("mahasiswa", m);
    RequestDispatcher rd = request.getRequestDispatcher("mahasiswa.update.view.jsp");
    rd.forward(request, response);
%>
