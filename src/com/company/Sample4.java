package com.company;

import java.net.URL;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.ResourceBundle;

import javafx.fxml.FXML;
import javafx.scene.control.TextArea;

public class Sample4 {

    @FXML
    private ResourceBundle resources;

    @FXML
    private URL location;

    @FXML
    private TextArea resultCheck;
    static ArrayList<String> arr = Sample2.arr;

    @FXML
    void initialize() {
//4665303537316
        String s = " Ваш чек!" + "\n";
        String s1 = "\n" + "\n" + "Общая сумма " + Sample2.countGeneralSum + " р";

        resultCheck.setText(s + removeUnnecessery(String.valueOf(arr)) + s1);

    }

    String removeUnnecessery(String s) {
        return s.replace(",", "\n").replace("[", " ").replace("]", "");
    }
}
