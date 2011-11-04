package kik;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * The controller for the helloWorld page.
 * The URL which start with "/helloWorld/" is gonna be mapped
 * to this controller.
 * User: keiko
 * Date: 10/30/11
 */
@Controller
@RequestMapping("/helloWorld/*")
public class HelloWorldController {

    /**
     * This method is for the URL "/helloWorld/index.html".
     * Return the message to the client.
     *
     * @param model
     * @return the name of view which will be shown after this method
     */
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String helloWorld(Model model) {
        model.addAttribute("message", "Hello World!");
        return "helloworld";
    }

}
