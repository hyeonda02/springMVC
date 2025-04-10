package kr.ac.hansung.cse.controller;

import jakarta.servlet.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
    private static final Logger logger = LoggerFactory.getLogger("kr.ac.hansung.cse.controller.HomeController");
    @GetMapping("/")
    public String home(HttpServletRequest request) {
        String requestURL = request.getRequestURL().toString();
        String clientIP = request.getRemoteAddr();
        logger.info("Request URL: {}, Client IP: {}", requestURL, clientIP);
        return "home";
    }

}
