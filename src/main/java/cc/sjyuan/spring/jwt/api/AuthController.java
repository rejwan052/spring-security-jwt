package cc.sjyuan.spring.jwt.api;

import cc.sjyuan.spring.jwt.configuration.security.JWTUser;
import cc.sjyuan.spring.jwt.entity.User;
import cc.sjyuan.spring.jwt.service.AuthService;
import cc.sjyuan.spring.jwt.util.UserFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@RestController
@RequestMapping("api")
public class AuthController {

    @Autowired
    private AuthService authService;

    @PostMapping("logout")
    @ResponseStatus(HttpStatus.OK)
    public void logout(HttpServletRequest request) throws Exception {
        authService.logout(request);
    }

    @PostMapping("login")
    @ResponseStatus(HttpStatus.OK)
    public JWTUser login(HttpServletResponse response, @RequestBody User user) throws Exception {
        return UserFactory.fromUser(authService.login(response, user));
    }
}