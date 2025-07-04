<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="crud.Mahasiswa"%>
<%
    Mahasiswa m = (Mahasiswa) request.getAttribute("mahasiswa");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Data Diupdate</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <style>
        body {
            background: linear-gradient(to right, #ffe4ec, #d0e9ff);
            font-family: 'Segoe UI', sans-serif;
        }

        .card {
            margin: 80px auto;
            max-width: 600px;
            border-radius: 20px;
            padding: 30px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            background-color: white;
        }

        h2 {
            color: #007bff;
            font-weight: bold;
            text-align: center;
            margin-bottom: 30px;
        }

        p {
            font-size: 18px;
        }

        .btn-success {
            display: block;
            margin: 30px auto 0;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="card">
        <h2>✅ Data Mahasiswa Berhasil Diupdate</h2>
        <p><strong>NIM:</strong> <%= m.getNim() %></p>
        <p><strong>Nama:</strong> <%= m.getNama() %></p>
        <p><strong>Nilai:</strong> <%= m.getNilai() %></p>
        <a href="index.jsp" class="btn btn-success">⬅️ Kembali ke Daftar</a>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
