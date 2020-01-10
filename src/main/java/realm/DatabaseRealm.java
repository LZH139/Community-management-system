package realm;

import java.util.Set;

import dto.User;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import dao.impl.userDaoImpl;

public class DatabaseRealm extends AuthorizingRealm {

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        //能进入到这里，表示账号已经通过验证了
        String account =(String) principalCollection.getPrimaryPrincipal();
        //通过DAO获取角色和权限
        Set<String> permissions = new userDaoImpl().listPermissions(account);
        Set<String> roles = new userDaoImpl().listRoles(account);

        //授权对象
        SimpleAuthorizationInfo s = new SimpleAuthorizationInfo();
        //把通过DAO获取到的角色和权限放进去
        s.setStringPermissions(permissions);
        s.setRoles(roles);

        return s;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {

        UsernamePasswordToken t = (UsernamePasswordToken) token;
        String account= token.getPrincipal().toString();
        String password= new String(t.getPassword());

        String passwordInDB = new userDaoImpl().getPassword(account);


        if(null==passwordInDB || !passwordInDB.equals(password)){
            throw new UnknownAccountException();
        }

        User user = new userDaoImpl().getUser(account);

        //认证信息里存放账号密码, getName() 是当前Realm的继承方法,通常返回当前类名 :databaseRealm
        SimpleAuthenticationInfo a = new SimpleAuthenticationInfo(user,password,getName());
        return a;
    }

}
