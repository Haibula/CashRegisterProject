package com.company;

import java.awt.*;
import java.io.IOException;
import java.net.URL;
import java.sql.SQLException;
import java.util.Map;
import java.util.ResourceBundle;
import java.util.Scanner;

import javafx.application.Application;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;
import javafx.scene.layout.AnchorPane;
import javafx.scene.text.TextFlow;
import javafx.stage.Stage;

public class Sample {
    public ConnectSqlServer connectSqlServer = Main.connectSqlServer;
    MethotsForTablePersonData methotsForTablePersonData = new MethotsForTablePersonData();
    @FXML
    private ResourceBundle resources;

    @FXML
    private URL location;

    @FXML
    public AnchorPane mainPlane;

    @FXML
    private Button entry1;

    @FXML
    private TextField login;

    @FXML
    private TextField pass;

    @FXML
    private Button register;

    @FXML
    private TextFlow noRght;


    public static String login1;
    public static String password1;

    @FXML
    void initialize() throws AWTException {

        entry1.setOnAction(e -> {
            try {
                for (Map.Entry entry : methotsForTablePersonData.getAllUserDate().entrySet()) {
                    if (entry.getKey().equals(login.getText()) && entry.getValue().equals(pass.getText())) {
                        login1 = login.getText();
                        password1 = pass.getText();
                        login.clear();
                        pass.clear();
                       // entry1.getScene().getWindow().hide();
                        FXMLLoader fxmlLoader = new FXMLLoader();
                        fxmlLoader.setLocation(getClass().getResource("fxmlFile/sample2.fxml"));
                        fxmlLoader.load();
                        Parent root = fxmlLoader.getRoot();
                        Stage stage = new Stage();
                        stage.setScene(new Scene(root));
                        stage.showAndWait();
                    } else {
                        noRght.setVisible(true);
                    }
                }

            } catch (SQLException | IOException ex) {
                throw new RuntimeException(ex);
            }

        });

        register.setOnAction(e -> {
            try {
                if (!login.getText().isEmpty() && !pass.getText().isEmpty()) {
                    methotsForTablePersonData.insertInto(login.getText(), pass.getText());
                }
            } catch (SQLException ex) {
                throw new RuntimeException(ex);
            }

        });
    }

}
