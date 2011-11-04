package kik;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import twitter4j.*;

import javax.validation.Valid;
import java.util.List;

/**
 * The controller for the pages which relate with Twitter.
 * The URL which start with "/twitter/" is gonna be mapped
 * to this controller.
 * User: keiko
 * Date: 11/01/11
 */
@Controller
@RequestMapping("/twitter/*")
@SessionAttributes("tweetSearchBean")
public class TwitterController {

    /**
     * To use TweetSearchBean as an argument of the controller method,
     * need this create method.
     * @return the new bean of TweetSearchBeen
     */
    @ModelAttribute("tweetSearchBean")
    public TweetSearchBean createTweetSearchBean() {
        return new TweetSearchBean();
    }

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String search() {
        return "search";
    }

    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView doSearch(
            @Valid TweetSearchBean tweetSearchBean,
            BindingResult result, SessionStatus status) {
        if (result.hasErrors()) {
            return new ModelAndView("search");
        }
        String searchKey = tweetSearchBean.getSearchKeyword();
        if ("Japanese".equals(tweetSearchBean.getLangSelect())) {
            searchKey += " lang:ja";
        } else if ("English".equals(tweetSearchBean.getLangSelect())) {
            searchKey += " lang:en";
        }

        List<Tweet> tweets = searchQuery(searchKey);

        ModelAndView mav = new ModelAndView("search", "tweets", tweets);
        mav.addObject("keyword", tweetSearchBean.getSearchKeyword());
        return mav;
    }

    /**
     * Search tweets using Twitter4j API
     *
     * @param key the key for search
     * @return search results
     */
    private List<Tweet> searchQuery(String key) {
        Twitter twitter = new TwitterFactory().getInstance();
        Query query = new Query(key);
        QueryResult result = null;
        try {
            result = twitter.search(query);
        } catch (TwitterException e) {
            e.printStackTrace();
            System.out.println("Failed to search tweets: " + e.getMessage());
        }

        return result.getTweets();
    }

}
