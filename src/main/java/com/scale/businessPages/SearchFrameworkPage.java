package com.scale.businessPages;

import com.scale.framework.utility.ConfigurationReader;
import com.scale.framework.utility.Log;
import com.scale.framework.utility.PageObjectManager;
import cucumber.api.Scenario;
import org.apache.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.WebDriverWait;

public class SearchFrameworkPage {
    private WebDriver driver;
    private ConfigurationReader configReaderObj;
    private Logger log = Log.getLogger(HomePage.class);
    private WebDriverWait wait;
    private PageObjectManager pageObjectManager;
    private Scenario scenario;
    private String helpMeFindTheRightFrameworkButtonXpath = "//button[contains(text(),'Help me find the right framework')]";

    @FindBy(xpath = "//button[contains(text(),'Help me find the right framework')]")
    private WebElement helpMeFindTheRightFrameworkButton;

    @FindBy(xpath = "//h1[contains(text(),'Search frameworks')]")
    private WebElement enterFrameworkDetails;

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
            pageObjectManager.getActions().waitForSeconds(2);
            String searchFrameworkPageTitle = searchFrameworksPage.getText();
            Assert.assertTrue(searchFrameworkPageTitle.contains("Search frameworks"));
            log.info("User is on Search Frameworks page");
            scenario.write("User is on Search Frameworks page");
        } else {
            log.info("User is not on Search Frameworks  page");
            scenario.write("User is not on Search Frameworks  page");
        }
    }

    public boolean isHelpMeFindTheRightFrameworkButtonDisplayed() {
        pageObjectManager.getActions().isElementPresentByXpath(helpMeFindTheRightFrameworkButtonXpath);
        return false;
    }

    public void checkThatHelpMeFindTheRightFrameworkButtonIsNotDisplayed() {
        Assert.assertFalse(isHelpMeFindTheRightFrameworkButtonDisplayed());
    }
}
