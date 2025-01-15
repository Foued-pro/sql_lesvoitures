package bts.ciel;

import bts.ciel.clavier.In;

import java.sql.*;

public class Main {
    public static void main(String[] args) throws SQLException {
        Connection connection;
        try {
            Class.forName(("com.mysql.cj.jdbc.Driver"));
            System.out.println("connected ");
            connection = DriverManager.getConnection("jdbc:mysql://localhost/voiture2024", "root", "");
            System.out.println("connection established");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        int choix = In.readInteger();
        System.out.println("""
                1.Lister les voitures par nombre de voitures vendues.
                2.Afficher les  9 premières voitures les plus vendues
                3.Afficher la 9 ième voiture la plus vendue
                4.Afficher les voitures de la marque Renault
                5.Afficher la somme des ventes de voitures de la marque Renault
                6.Afficher les voitures dont le nom du modèle commence par c
                7.Afficher le nombre d’enregistrement de votre bdd
                8.Afficher la somme des voitures vendues
                9.Afficher les voitures dont le modèle contient un i
                10.Afficher les voitures dont la deuxième lettre de la marque est i
                11.Afficher les voitures dont le nom du modèle finit par o
                12.Afficher les ventes par marque              
                """);
        String query = "";
        PreparedStatement preparedStatement = null;
        ResultSet rs =null;
        switch (choix) {
            case 1:
                preparedStatement = connection.prepareStatement("select * from voitures ORDER BY `voiture`.`nombre`");
                rs = preparedStatement.executeQuery();
                while (rs.next()) {
                    System.out.println(rs.getString("marque"));
                    System.out.println(rs.getInt("nombre"));
                }
                break;
            case 2:
                preparedStatement = connection.prepareStatement("select * from voitures ORDER BY `voiture`.`nombre`  DESC LIMIT 9 ");
                rs = preparedStatement.executeQuery();
                while (rs.next()) {
                    System.out.println(rs.getString("marque"));
                }
                break;
        }
    }
}