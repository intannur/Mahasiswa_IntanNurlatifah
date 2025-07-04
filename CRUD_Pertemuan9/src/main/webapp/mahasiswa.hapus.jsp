<%@page import="crud.Mahasiswa"%>
<%
    String nim = request.getParameter("nim");

    if (nim != null && !nim.isEmpty()) {
        Mahasiswa m = new Mahasiswa();
        m.setNim(nim);
        m.hapus();
%>
        <script>
            alert("Data dengan NIM <%= nim %> berhasil dihapus!");
            window.location.href = "index.jsp"; // redirect ke halaman utama
        </script>
<%
    } else {
%>
        <script>
            alert("NIM tidak ditemukan!");
            window.location.href = "index.jsp";
        </script>
<%
    }
%>

