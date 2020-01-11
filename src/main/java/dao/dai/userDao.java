package dao.dai;


import dto.User;

import java.util.Set;

public interface userDao {

    String getPassword(String account);

    Set<String> listRoles(String account);

    Set<String> listPermissions(String account);

    User getUser(String account);







}
