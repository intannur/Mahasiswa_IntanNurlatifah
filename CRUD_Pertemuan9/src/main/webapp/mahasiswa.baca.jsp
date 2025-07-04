<%@page import="crud.Mahasiswa"%>
<%
    Mahasiswa m = new Mahasiswa();
    String nim = request.getParameter("nim");
    m.baca(nim);

    request.setAttribute("mahasiswa", m);
    RequestDispatcher rd = request.getRequestDispatcher("mahasiswa.baca.view.jsp");
    rd.forward(request, response);
%>
