<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tambah Mahasiswa</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <style>
        body {
            background: linear-gradient(to right, #ffe4ec, #d0e9ff);
            font-family: 'Segoe UI', sans-serif;
        }

        .form-container {
            background-color: #ffffff;
            border-radius: 20px;
            padding: 30px;
            max-width: 500px;
            margin: 80px auto;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #007bff;
            margin-bottom: 30px;
            font-weight: bold;
        }

        .btn-primary {
            background-color: #ff69b4;
            border-color: #ff69b4;
        }

        .btn-primary:hover {
            background-color: #ff85c1;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="form-container">
        <h2>➕ Tambah Data Mahasiswa</h2>
        <form action="mahasiswa.tambah.jsp" method="post">
            <div class="mb-3">
                <label for="nim" class="form-label">NIM:</label>
                <input type="text" id="nim" name="nim" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="nama" class="form-label">Nama:</label>
                <input type="text" id="nama" name="nama" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="nilai" class="form-label">Nilai:</label>
                <input type="number" id="nilai" name="nilai" class="form-control" required>
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-primary">💾 Simpan</button>
                <a href="index.jsp" class="btn btn-secondary ms-2">🔙 Kembali</a>
            </div>
        </form>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
