package kik;

import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.Size;

/**
 * This is the bean for the searching on Twitter.
 * User: keiko
 * Date: 10/25/11
 */
public class TweetSearchBean {

    /**
     * Search keyword should not be empty,
     * and the length of it should be less than 15
     */
    @NotEmpty
    @Size(max = 25)
    private String searchKeyword;

    /**
     * Select language should not be empty
     */
    @NotEmpty
    private String langSelect;

    public String getSearchKeyword() {
        return searchKeyword;
    }

    public void setSearchKeyword(String searchKeyword) {
        this.searchKeyword = searchKeyword;
    }

    public String getLangSelect() {
        return langSelect;
    }

    public void setLangSelect(String langSelect) {
        this.langSelect = langSelect;
    }
}
