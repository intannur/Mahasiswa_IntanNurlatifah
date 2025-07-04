// File: src/model/Mahasiswa.java
package crud;

import java.sql.*;

public class Mahasiswa {
    private String nim;
    private String nama;
    private int nilai;

    // Koneksi database
    private final String URL = "jdbc:mysql://localhost:3306/test";
    private final String USER = "root";
    private final String PASS = "";

    public Mahasiswa() {}

    // Setter dan Getter
    public void setNim(String nim) { this.nim = nim; }
    public void setNama(String nama) { this.nama = nama; }
    public void setNilai(int nilai) { this.nilai = nilai; }

    public String getNim() { return nim; }
    public String getNama() { return nama; }
    public int getNilai() { return nilai; }

    // Method tambah
    public void tambah() {
        try (Connection conn = DriverManager.getConnection(URL, USER, PASS)) {
            String sql = "INSERT INTO mahasiswa (nim, nama, nilai) VALUES (?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, nim);
            ps.setString(2, nama);
            ps.setInt(3, nilai);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Method update
    public void update() {
        try (Connection conn = DriverManager.getConnection(URL, USER, PASS)) {
            String sql = "UPDATE mahasiswa SET nama = ?, nilai = ? WHERE nim = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, nama);
            ps.setInt(2, nilai);
            ps.setString(3, nim);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Method baca
    public void baca(String nim) {
        try (Connection conn = DriverManager.getConnection(URL, USER, PASS)) {
            String sql = "SELECT * FROM mahasiswa WHERE nim = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, nim);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                this.nim = rs.getString("nim");
                this.nama = rs.getString("nama");
                this.nilai = rs.getInt("nilai");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
   public void hapus() {
    try (Connection conn = DriverManager.getConnection(URL, USER, PASS)) {
        String sql = "DELETE FROM mahasiswa WHERE nim = ?";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, nim);
        ps.executeUpdate();
    } catch (Exception e) {
        e.printStackTrace();
    }
}
}