package dao.impl;

import org.junit.Test;

import java.util.Set;

import static org.junit.Assert.*;

public class userDaoImplTest {

    @Test
    public void getPassword() {
    }

    @Test
    public void listRoles() {
    }

    @Test
    public void listPermissions() {
        Set<String> permissions = new userDaoImpl().listPermissions("13326561256@qq.com");
        System.out.println(permissions);
    }

    @Test
    public void getUser() {
    }
}