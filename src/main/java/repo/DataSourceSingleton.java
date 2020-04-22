package repo;

import com.microsoft.sqlserver.jdbc.SQLServerDataSource;


import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataSourceSingleton {

    private static final String SERVER_NAME="kova.database.windows.net";
    private static final String DATABSE_NAME="WebShop";
    private static final String USER="kova";
    private static final String PASSWORD="MALIkreten65";

    private static DataSource createInstance() {
        SQLServerDataSource dataSource= new SQLServerDataSource();
        dataSource.setServerName(SERVER_NAME);
        dataSource.setDatabaseName(DATABSE_NAME);
        dataSource.setUser(USER);
        dataSource.setPassword(PASSWORD);
        return dataSource;
    }

    public DataSourceSingleton() {
    }

    private static DataSource instance;

    public static DataSource getInstance() {
        if (instance == null) {
            instance = createInstance();
        }
        return instance;
    }
}



