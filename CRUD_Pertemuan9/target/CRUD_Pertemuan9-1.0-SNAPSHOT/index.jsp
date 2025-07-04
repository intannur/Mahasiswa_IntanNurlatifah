<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Data Mahasiswa</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <style>
        body {
            background: linear-gradient(to right, #ffe4ec, #d0e9ff); /* pink ke biru gradasi */
            font-family: 'Segoe UI', sans-serif;
        }

        .table th {
            background-color: #ffc0cb; /* Pink pastel */
        }

        .table-striped tbody tr:nth-of-type(odd) {
            background-color: #f9f9ff;
        }

        .btn-primary {
            background-color: #ff69b4;
            border-color: #ff69b4;
        }

        .btn-primary:hover {
            background-color: #ff85c1;
        }

        .btn-success {
            background-color: #66c6ff;
            border-color: #66c6ff;
        }

        .btn-success:hover {
            background-color: #89d4ff;
        }

        .btn-warning {
            background-color: #ffb347;
            border-color: #ffb347;
        }

        .btn-warning:hover {
            background-color: #ffc76a;
        }

        .btn-danger {
            background-color: #ff6b6b;
            border-color: #ff6b6b;
        }

        .btn-danger:hover {
            background-color: #ff8787;
        }

        h2 {
            font-weight: bold;
            color: #007bff;
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <h2 class="text-center mb-4">📚 Daftar Mahasiswa</h2>

    <%
        String url = "jdbc:mysql://localhost:3306/test";
        String user = "root";
        String pass = "";
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, pass);
            stmt = conn.createStatement();
            String sql = "SELECT nim, nama, nilai FROM mahasiswa";
            rs = stmt.executeQuery(sql);
    %>

    <table class="table table-striped table-bordered shadow text-center">
        <thead>
            <tr>
                <th>NIM</th>
                <th>Nama</th>
                <th>Nilai</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
        <%
            while(rs.next()) {
                String nim = rs.getString("nim");
        %>
        <tr class="align-middle">
            <td><%= nim %></td>
            <td><%= rs.getString("nama") %></td>
            <td><%= rs.getString("nilai") %></td>
            <td>
                <a href="mahasiswa.form.update.jsp?nim=<%= nim %>" class="btn btn-warning btn-sm me-2">✏️ Edit</a>
                <form action="mahasiswa.hapus.jsp" method="post" style="display:inline;" onsubmit="return confirm('Yakin ingin menghapus data ini?');">
                    <input type="hidden" name="nim" value="<%= nim %>">
                    <button type="submit" class="btn btn-danger btn-sm">🗑️ Hapus</button>
                </form>
            </td>
        </tr>
        <% } %>
        </tbody>
    </table>

    <%
        } catch (Exception e) {
            out.println("<div class='alert alert-danger text-center'>Error: " + e.getMessage() + "</div>");
        } finally {
            try { if (rs != null) rs.close(); } catch (Exception e) {}
            try { if (stmt != null) stmt.close(); } catch (Exception e) {}
            try { if (conn != null) conn.close(); } catch (Exception e) {}
        }
    %>

    <div class="text-center mt-4">
        <a href="mahasiswa.form.tambah.jsp" class="btn btn-success">➕ Tambah Mahasiswa</a>
    </div>
</div>

<!-- JS Bootstrap -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
