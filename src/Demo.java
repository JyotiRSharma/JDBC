import java.sql.*;

/*
 * 1. Import the package
 * 2. Load and register the driver -- com.jdbc.sql.driver
 * 3. Establish a connection -- Connection Interface
 * 4. Create a statement -- Statement Interface
 * 5. Execute the statement -- 
 * 6. Process results
 * 7. Close connections
 * 
 */

public class Demo {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		
		String url = "jdbc:mysql://localhost:3306/testdb";
		String uname = "root";
		String pass = "Krsna@#135";
		String query = "select name from student where id=3";
		
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection con = DriverManager.getConnection(url, uname, pass);
		Statement st = con.createStatement();
		
		ResultSet rs = st.executeQuery(query);
		
		rs.next();
		String name = rs.getString("name");
		
		System.out.println(name);
		
		st.close();
		con.close();

	}

}
