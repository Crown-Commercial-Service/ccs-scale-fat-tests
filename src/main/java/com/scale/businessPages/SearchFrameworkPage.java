package com.scale.businessPages;

import com.scale.framework.utility.Actions;
import com.scale.framework.utility.ConfigurationReader;
import com.scale.framework.utility.Log;
import cucumber.api.Scenario;
import org.apache.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.*;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.util.List;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

public class SearchFrameworkPage extends Actions {
    private WebDriver driver;
    private ConfigurationReader configReaderObj;
    private Logger log = Log.getLogger(HomePage.class);
    private String helpMeFindTheRightFrameworkButtonXpath = "//button[contains(text(),'Help me find the right framework')]";

    @FindBy(xpath = "//button[contains(text(),'Help me find the right framework')]")
    private WebElement helpMeFindTheRightFrameworkButton;

    @FindBy(xpath = "//input[@id='q']")
    private WebElement enterFrameworkDetails;

    @FindBy(xpath = "//*[@id='main-content']/div[2]/div[2]/h2")
    private WebElement searchAgreementHeader;

    @FindBy(xpath = "//*[@class='govuk-list govuk-list--frameworks']/li/h3/a")
    private List<WebElement> searchAgreementList;

    @FindBy(css = ".ccs-filters-summary__list > li")
    private List<WebElement> filterSummaryList;

    @FindBy(xpath = "//button[@class='sidebar__search-button govuk-input']")
    private WebElement searchButton;

    private String filterSummaryFacet = "//*[@class='ccs-filters-summary__facet__cancel']";
    private String upcomingFilter = "//*[@id='upcoming']";
    private String viewAllFilter = "//*[@id='all']";
    private String liveFilter = "//*[//*[@id='live']";
    private String expiredFilter = "//*[@id='expired']";

    public SearchFrameworkPage(WebDriver driver, Scenario scenario) {
        this.driver = driver;
        this.scenario = scenario;
        PageFactory.initElements(driver, this);
        this.wait = new WebDriverWait(this.driver, 30);
    }

    public void SearchFrameworkPage1() {
        WebElement searchFrameworksPage = driver.findElement(By.xpath("//h1[contains(text(),'Search frameworks')]"));
        if (searchFrameworksPage.isDisplayed()) {
            searchFrameworksPage.click();
            waitForSeconds(2);
            String searchFrameworkPageTitle = searchFrameworksPage.getText();
            Assert.assertTrue(searchFrameworkPageTitle.contains("Search frameworks"));
            log.info("User is on Search Frameworks page");
            scenario.write("User is on Search Frameworks page");
        } else {
            log.info("User is not on Search Frameworks  page");
            scenario.write("User is not on Search Frameworks  page");
        }
    }

    public void enterFrameworkDetails(String framework) {
        waitForSeconds(1);
        enterText(enterFrameworkDetails, framework);
        waitForSeconds(2);
        searchButton.click();
    }

    public void clickElementWithJavaScript(String xpath) {
        WebElement element = driver.findElement(By.xpath(xpath));
        JavascriptExecutor executor = (JavascriptExecutor) driver;
        executor.executeScript("arguments[0].click();", element);
        log.info("Clicked on specified element");
    }

    public boolean isHelpMeFindTheRightFrameworkButtonDisplayed() {
        return this.isElementPresentByXpath(helpMeFindTheRightFrameworkButtonXpath);
    }

    public void checkThatHelpMeFindTheRightFrameworkButtonIsNotDisplayed() {
        Assert.assertFalse(isHelpMeFindTheRightFrameworkButtonDisplayed());
    }

    public String getsearchAgreementHeaderText(){
        return getText(searchAgreementHeader);
    }

    public List<WebElement> getSearchAgreementList() {
        return searchAgreementList;
    }

    public List<WebElement> getFilterFacet(){
        return filterSummaryList;
    }

    public void filterOptions(String filter) throws InterruptedException {
        switch (filter) {
            case "View all":
                clickElementWithJavaScript(viewAllFilter);
                Thread.sleep(2000);
                log.info("Clicked on View all");
                break;
            case "Live":
                clickElementWithJavaScript(liveFilter);
                Thread.sleep(2000);
                log.info("Clicked on Live Filter option");
                break;
            case "Expired":
                clickElementWithJavaScript(expiredFilter);
                Thread.sleep(2000);
                log.info("Clicked on Expired filter option");
                break;
            case "Upcoming":
                clickElementWithJavaScript(upcomingFilter);
                Thread.sleep(2000);
                log.info("Clicked on Upcoming filter option");
                break;
        }
    }

    public void cancelFilterSummaryFacet() {
        clickElementWithJavaScript(filterSummaryFacet);
    }


}
