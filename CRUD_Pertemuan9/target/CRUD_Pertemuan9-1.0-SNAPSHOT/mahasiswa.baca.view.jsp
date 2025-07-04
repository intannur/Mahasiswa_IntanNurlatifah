<%@page import="crud.Mahasiswa"%>
<%
    Mahasiswa m = (Mahasiswa) request.getAttribute("mahasiswa");
%>
<h2>Detail Mahasiswa</h2>
<p>NIM: <%= m.getNim() %></p>
<p>Nama: <%= m.getNama() %></p>
<p>Nilai: <%= m.getNilai() %></p>
