<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="crud.Mahasiswa" %>
<%
    Mahasiswa m = new Mahasiswa();
    m.baca(request.getParameter("nim"));
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Data Mahasiswa</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <style>
        body {
            background: linear-gradient(to right, #ffe4ec, #d0e9ff);
            font-family: 'Segoe UI', sans-serif;
        }

        .form-box {
            background-color: #ffffff;
            border-radius: 20px;
            padding: 40px;
            max-width: 600px;
            margin: 80px auto;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #007bff;
            margin-bottom: 30px;
            font-weight: bold;
        }

        label {
            font-weight: 500;
        }

        .btn-custom {
            background-color: #28a745;
            color: #fff;
            border: none;
        }

        .btn-custom:hover {
            background-color: #218838;
        }

        .btn-back {
            margin-top: 10px;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="form-box">
        <h2>✏️ Update Data Mahasiswa</h2>
        <form action="mahasiswa.update.jsp" method="post">
            <div class="mb-3">
                <label for="nim">NIM</label>
                <input type="text" id="nim" name="nim" class="form-control" value="<%= m.getNim() %>" readonly>
            </div>

            <div class="mb-3">
                <label for="nama">Nama</label>
                <input type="text" id="nama" name="nama" class="form-control" value="<%= m.getNama() %>" required>
            </div>

            <div class="mb-3">
                <label for="nilai">Nilai</label>
                <input type="number" id="nilai" name="nilai" class="form-control" value="<%= m.getNilai() %>" required>
            </div>

            <button type="submit" class="btn btn-custom">💾 Simpan Perubahan</button>
            <a href="index.jsp" class="btn btn-secondary btn-back">Kembali</a>
        </form>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
