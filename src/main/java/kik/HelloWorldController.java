package kik;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * The controller for the pages which under the top page.
 * User: keiko
 * Date: 10/30/11
 */
@Controller
@RequestMapping("/helloWorld/*")
public class HelloWorldController {

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String helloWorld(Model model) {
        model.addAttribute("message", "Hello World!");
        return "helloworld";
    }

}
