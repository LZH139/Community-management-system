package common;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;


public class DBconnectionTest {

    @Before
    public void setUp() throws Exception {
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void getConnection() {
        DBconnection db = new DBconnection();
        db.getConnection();

    }
}