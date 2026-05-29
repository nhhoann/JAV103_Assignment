package com.example.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.example.Model.Video;
import com.example.Util.DBConnector;

public class videoDAO {
    @SuppressWarnings("FieldMayBeFinal")
    private Connection connection;

    public videoDAO () {
        this.connection = DBConnector.getConnection();
    }
    @SuppressWarnings({"UseSpecificCatch", "CallToPrintStackTrace"})
    public void createVideo(Video video) {
        String sql = "INSERT INTO video (Id, Title, Poster, Views, Description, Active) VALUES (?, ?, ?, ?, ?, ?)";
        try {PreparedStatement stat = connection.prepareStatement(sql);
            stat.setString(1, video.getId());
            stat.setString(2, video.getTitle());
            stat.setString(3, video.getPoster());
            stat.setInt(4, video.getViews());
            stat.setString(5, video.getDescription());
            stat.setBoolean(6, video.isActive());
            stat.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

