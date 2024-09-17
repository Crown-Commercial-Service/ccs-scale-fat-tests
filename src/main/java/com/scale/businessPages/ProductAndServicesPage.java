package com.scale.businessPages;

import com.scale.framework.utility.Actions;
import com.scale.framework.utility.ConfigurationReader;
import cucumber.api.Scenario;
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
import java.util.List;

public class ProductAndServicesPage extends Actions {
    private WebDriver driver;
    private ConfigurationReader configReaderObj;
    private Logger log = LogManager.getLogger(ProductAndServicesPage.class);
    @FindBy(xpath = "//*[@class='govuk-heading-m intro__heading']")
    private List<WebElement> aboutPageSubheading;
    @FindBy(xpath = "(//*[@class='govuk-heading-m intro__heading'])[1]")
    private WebElement subHeadingText;
    @FindBy(xpath = "//*[contains(text(),'Browse all products and services news articles')]")
    private WebElement linkBrowseAllProductsAndServicesNewsArticles;
    @FindBy(xpath = "//*[contains(text(),'View all')]")
    private WebElement linkviewAll;

    @FindBy(xpath = "//*[@class='component feature-news']")
    private WebElement componentNewsAndGuidance;
    @FindBy(xpath = "//*[@class='component feature-events']")
    private WebElement componentEvent;
    @FindBy(xpath = "//*[contains(text(),'Our digital brochure')]")
    private WebElement componentDigitalBrochure;


    public ProductAndServicesPage(WebDriver driver, Scenario scenario) {
        this.driver = driver;
        this.scenario = scenario;
        PageFactory.initElements(driver, this);
        this.wait = new WebDriverWait(this.driver, Duration.ofSeconds(30));
    }

    public void verifyCards() {
        int cardCount = driver.findElements(By.xpath("//*[@class='card-list govuk-!-margin-top-6 card-pillars card-list--four-on-large']/li")).size();
        Assert.assertEquals(3, cardCount);
    }
    public void verifyNewsAndGuidanceComponent() {
      componentNewsAndGuidance.isDisplayed();
    }
    public void verifyCardsInNewsAndGuidance() {
        int cardCount = driver.findElements(By.xpath("//*[@class='featured-news news-listing']/li")).size();
        Assert.assertEquals(3, cardCount);
    }

    public void clickOnBrowseAllProductsAndServicesNewsArticles() {
        linkBrowseAllProductsAndServicesNewsArticles.click();
    }
    public void clickOnviewAll() {
        linkviewAll.click();
    }

    public void verifyUpcomingEventsAndWebinarsComponent() {
        componentEvent.isDisplayed();
    }
    public void verifyDigitalBrochureComponent() {
        componentDigitalBrochure.isDisplayed();
    }


    public void verifyAdditionalServicesAndAgreements() {
        String expectedSubHeading = subHeadingText.getText();
        Assert.assertEquals(expectedSubHeading, "Additional services and agreements");
        int cardCount = driver.findElements(By.xpath("//*[@class='card-list govuk-!-margin-top-6 card-pillars card-list--four-on-large']/li")).size();
        Assert.assertEquals(3, cardCount);
    }

}

