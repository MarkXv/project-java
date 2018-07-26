package cn.powerun.springBoot.shiro;

import cn.powerun.springBoot.pojo.user.User;
import cn.powerun.springBoot.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by Administrator on 2017/10/20.
 */
public class UserRealm extends AuthorizingRealm {
    @Autowired
    private UserService userService;

    /**
     * 权限认证
     * @param principalCollection
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        //通过userId查询档期啊用户的所有模块名称
        List<String> priList = userService.findPrililegeInfoList(user.getUserId());
        System.out.println("用户："+user.getUsername()+"拥有的权限："+priList);
        SimpleAuthorizationInfo info =new SimpleAuthorizationInfo();
        //为info对象赋值用户权限列表
        info.addStringPermissions(priList);

        return  info;


    }

    /**
     *身份认证
     * @param authenticationToken
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        UsernamePasswordToken token = (UsernamePasswordToken) authenticationToken;
        String username = token.getUsername();

        //根据请求的用户名查找数据库，得到真实的用户对象
        User user =userService.findUserByName(username);
        String password=user.getPassword();
        System.out.println("出库的密码"+password);


        //1.用户真实对象，2.用户真实密码3.当前realm的名称
        AuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(user,password,this.getName());
        return authenticationInfo;
    }
}
