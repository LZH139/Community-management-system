package dao.dai;


import java.util.Set;

public interface userDao {

    String getPassword(String username);

    Set<String> listRoles(String userName);

    Set<String> listPermissions(String userName);





}
