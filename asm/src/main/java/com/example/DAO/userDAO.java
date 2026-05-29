package com.example.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.example.Model.User;
import com.example.Util.DBConnector;

public class userDAO {
    @SuppressWarnings("FieldMayBeFinal")
    private Connection connection;

    public userDAO () {
        this.connection = DBConnector.getConnection();
    }
    @SuppressWarnings("CallToPrintStackTrace")
    public boolean createUser(User user) {
        String sql = "INSERT INTO [User] (id, password, email, fullname, admin) VALUES (?, ?, ?, ?, ?)";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, user.getId());
            stmt.setString(2, user.getPassword());
            stmt.setString(3, user.getEmail());
            stmt.setString(4, user.getFullname());
            stmt.setBoolean(5, user.isAdmin());
            int rowsInserted = stmt.executeUpdate();
            return rowsInserted > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
