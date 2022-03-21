package flowershop.flowerSearch.database;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

	public static Connection getConnection() throws SQLException, ClassNotFoundException {
		return DriverManager.getConnection("jdbc:h2:tcp://localhost/~/flowershop", "sa", "");
	}

}