package kik;

import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * This is the bean for the searching.
 * User: keiko
 * Date: 10/25/11
 */
public class TweetSearchBean {
    @NotEmpty
    @Size(max=15)
    private String searchKeyword;

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
