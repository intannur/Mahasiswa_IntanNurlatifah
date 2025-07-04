<%@page contentType="text/html;charset=UTF-8" language="java"%>
<%@page import="crud.Mahasiswa"%>
<%
    Mahasiswa m = (Mahasiswa) request.getAttribute("mahasiswa");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Berhasil Ditambahkan</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <style>
        body {
            background: linear-gradient(to right, #ffe4ec, #d0e9ff);
            font-family: 'Segoe UI', sans-serif;
        }

        .confirmation-box {
            background-color: #ffffff;
            border-radius: 20px;
            padding: 40px;
            max-width: 600px;
            margin: 80px auto;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #28a745;
            margin-bottom: 30px;
            font-weight: bold;
        }

        .data-info p {
            font-size: 18px;
            margin-bottom: 10px;
        }

        .btn-custom {
            background-color: #007bff;
            color: #fff;
            border: none;
        }

        .btn-custom:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="confirmation-box text-center">
        <h2>✅ Data Mahasiswa Berhasil Ditambahkan</h2>
        <div class="data-info text-start">
            <p><strong>NIM:</strong> <%= m.getNim() %></p>
            <p><strong>Nama:</strong> <%= m.getNama() %></p>
            <p><strong>Nilai:</strong> <%= m.getNilai() %></p>
        </div>
        <a href="index.jsp" class="btn btn-custom mt-3">🏠 Kembali ke Daftar</a>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
