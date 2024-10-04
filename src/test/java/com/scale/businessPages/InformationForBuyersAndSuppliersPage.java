package com.scale.businessPages;

import com.scale.utility.Actions;
import com.scale.utility.ConfigurationReader;
import io.cucumber.java.Scenario;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;
import java.util.List;

public class InformationForBuyersAndSuppliersPage extends Actions {
    private WebDriver driver;
    private ConfigurationReader configReaderObj;
    private Logger log = LogManager.getLogger(SectorsPage.class);
    @FindBy(xpath = "//*[contains(text(),'Information for new buyers and suppliers')]/../ul/li/div/h3")
    private List<WebElement> FirstColumnHeadingHeading;
    @FindBy(xpath = "//*[contains(text(),'Navigating public procurement')]/../ul/li/div/h3")
    private List<WebElement> SecondColumnHeadingHeading;


    public InformationForBuyersAndSuppliersPage(WebDriver driver, Scenario scenario) {
        this.driver = driver;
        PageFactory.initElements(driver, this);
        this.wait = new WebDriverWait(this.driver, Duration.ofSeconds(30));
    }


    public List<WebElement> getFirstColumnHeadingHeading() {
        return FirstColumnHeadingHeading;
    }

    public List<WebElement> getSecondColumnHeadingHeading() {
        return SecondColumnHeadingHeading;
    }

    public void verifyRelatedArticles() {
        int relatedArticlesCount = driver.findElements(By.xpath("//*[@class='featured-news news-listing']/li")).size();
        Assert.assertEquals(3, relatedArticlesCount);

    }

}

