package com.company;

import java.net.URL;
import java.sql.SQLException;
import java.util.ResourceBundle;

import com.sun.jdi.request.WatchpointRequest;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;

public class Sample3 {

    @FXML
    private ResourceBundle resources;

    @FXML
    private URL location;

    @FXML
    private Button addSugar;

    @FXML
    private Button addMilk;

    @FXML
    private Button addBread;

    @FXML
    private Button addEggs;

    @FXML
    private TextArea addRemovProduct;

    @FXML
    private TextField inputQuantitySugar;

    @FXML
    private TextField inputQuantityMilk;

    @FXML
    private TextField inputQuantityBread;

    @FXML
    private TextField inputQuantityEggs;

    @FXML
    private Button removeSugar;

    @FXML
    private Button removeMilk;

    @FXML
    private Button removeBread;

    @FXML
    private Button removEggs;

    @FXML
    private Button warehouse;

    @FXML
    private TextArea warehouseData;

    @FXML
    void initialize() throws SQLException {

//        if (inputQuantitySugar.getText()) {
//            inputQuantitySugar.clear();
//
//        }


        Sugar sugar = new Sugar();
        Milk milk = new Milk();
        Bread bread = new Bread();
        Eggs eggs = new Eggs();

        addRemovProduct.setText(MethotsForTableWareHouse.getProducAlltDataName());
        warehouse.setOnAction(e -> {
            try {
                warehouseData.setText(String.join("\n", MethotsForTableWareHouse.getProducAlltData()));
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        });

        addSugar.setOnAction(e -> {
            try {
                if (!inputQuantitySugar.getText().isEmpty()) {
                    sugar.addChangeQuantity(Integer.parseInt(inputQuantitySugar.getText()));
                    inputQuantitySugar.clear();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        });

        removeSugar.setOnAction(e -> {
            try {
                if (!inputQuantitySugar.getText().isEmpty()) {
                    sugar.removeChangeQuantity(Integer.parseInt(inputQuantitySugar.getText()));
                    inputQuantitySugar.clear();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        });

        addMilk.setOnAction(e -> {
            try {
                if (!inputQuantityMilk.getText().isEmpty()) {
                    milk.addChangeQuantity(Integer.parseInt(inputQuantityMilk.getText()));
                    inputQuantityMilk.clear();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        });

        removeMilk.setOnAction(e -> {
            try {
                if (!inputQuantityMilk.getText().isEmpty()) {
                    milk.removeChangeQuantity(Integer.parseInt(inputQuantityMilk.getText()));
                    inputQuantityMilk.clear();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        });

        addBread.setOnAction(e -> {
            try {
                if (!inputQuantityBread.getText().isEmpty()) {
                    bread.addChangeQuantity(Integer.parseInt(inputQuantityBread.getText()));
                    inputQuantityBread.clear();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        });

        removeBread.setOnAction(e -> {
            try {
                if (!inputQuantityBread.getText().isEmpty()) {
                    bread.removeChangeQuantity(Integer.parseInt(inputQuantityBread.getText()));
                    inputQuantityBread.clear();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        });

        addEggs.setOnAction(e -> {
            try {
                if (!inputQuantityEggs.getText().isEmpty()) {
                    eggs.addChangeQuantity(Integer.parseInt(inputQuantityEggs.getText()));
                    inputQuantityEggs.clear();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        });

        removEggs.setOnAction(e -> {
            try {
                if (!inputQuantityEggs.getText().isEmpty()) {
                    eggs.removeChangeQuantity(Integer.parseInt(inputQuantityEggs.getText()));
                    inputQuantityEggs.clear();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        });
    }

}

