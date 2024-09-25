package com.scale.businessPages;

import com.scale.utility.Actions;
import com.scale.utility.ConfigurationReader;
import io.cucumber.java.Scenario;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public class GMLandingPage extends Actions {
    private WebDriver driver;
    private ConfigurationReader configReaderObj;
    private Logger log = LogManager.getLogger(GMLandingPage.class);


    @FindBy(xpath = "//input[@id='framework_q']")
    private WebElement enterFrameworkDetails;

    @FindBy(xpath = "//a[@class='govuk-breadcrumbs__link'][contains(text(),'Search frameworks')]")
    private WebElement searchFrameworksCta;

    @FindBy(xpath = "//h1[@class='govuk-fieldset__heading'][contains(text(),'Are you looking for a product or a service?')]")
    private WebElement firstLinenJourneyQuestionHeader;

    @FindBy(xpath = "//*[@class='govuk-radios__item']/label")
    private List<WebElement> radioItemText;

    public GMLandingPage(WebDriver driver, Scenario scenario) {
        this.driver = driver;
     
        PageFactory.initElements(driver, this);
        this.wait = new WebDriverWait(this.driver, Duration.ofSeconds(30));
    }

    public void gmPage() {
        WebElement gmPage = driver.findElement(By.xpath("//li[contains(text(),'Guided match')]"));
        if (gmPage.isDisplayed()) {
            gmPage.click();
            waitForSeconds(2);
            String gmPageTest = gmPage.getText();
            Assert.assertTrue(gmPageTest.contains("Guided match"));
            log.info("User is on Guided match landing page");
            scenario.log("User is on Guided match landing page");
        } else {
            log.info("User is not on Guided match landing page");
            scenario.log("User is not on Guided match landing page");
        }
    }

    public void clickSearchFrameworksCta() {
        this.clickElement(searchFrameworksCta);
    }

    public void isGmJourneyOpenedInTheSameTab(){
        Set<String> allWindowHandles = driver.getWindowHandles();
        ArrayList<String> tabs = new ArrayList<String>(allWindowHandles);
        Assert.assertEquals("The number of the tabs is not equal with 1", 1, tabs.size());
        this.waitForElementToBeVisible(firstLinenJourneyQuestionHeader);
    }

    public List<WebElement> getRadioItemText(){
        return radioItemText;
    }
}
