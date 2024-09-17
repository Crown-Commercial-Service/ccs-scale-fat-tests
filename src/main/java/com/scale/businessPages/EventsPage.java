package com.scale.businessPages;

import com.scale.framework.utility.Actions;
import cucumber.api.Scenario;
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

public class EventsPage extends Actions {
    private WebDriver driver;
    private Logger log = LogManager.getLogger(EventsPage.class);
    @FindBy(xpath = "//*[@class='govuk-grid-column-one-quarter']//fieldset//div/div[2]/div[1]/legend/h2/button/span[1]/span")
    private List<WebElement> filterCategoryType;

    @FindBy(xpath = "//*[@id='filter_audience_tag-content-1']/div/label")
    private List<WebElement> eventAudienceFilterOptions;
    @FindBy(xpath = "//*[@id='filter_events-content-1']/div/label")
    private List<WebElement> eventTypeFilterOptions;
    @FindBy(xpath = "//*[@id='products-services-accordion-content-1']/div/label")
    private List<WebElement> ProductAndServiceFilterOptions;
    @FindBy(xpath = "//*[@id='sectors-accordion-content-1']/div/label")
    private List<WebElement> SectorFilterOptions;
    @FindBy(xpath = "//*[contains(text(),'Clear filters')]")
    private WebElement linkClearFilter;


    public EventsPage(WebDriver driver, Scenario scenario) {
        this.driver = driver;
        this.scenario = scenario;
        PageFactory.initElements(driver, this);
        this.wait = new WebDriverWait(this.driver, Duration.ofSeconds(30));
    }

    public List<WebElement> getFilterCategoryType() {
        return filterCategoryType;
    }

    public List<WebElement> getEventAudienceFilterOptions() {
        return eventAudienceFilterOptions;
    }

    public List<WebElement> getEventTypeFilterOptions() {
        return eventTypeFilterOptions;
    }

    public List<WebElement> getProductAndServiceFilterOptions() {
        return ProductAndServiceFilterOptions;
    }

    public List<WebElement> getSectorFilterOptions() {
        return SectorFilterOptions;
    }

    public void selectFilterOption(String filterOption) {
        waitForSeconds(2);
        String XPATH = "//*[contains(text(),'" + filterOption + "')]//preceding-sibling::input[@type='checkbox']";
        WebElement element = driver.findElement(By.xpath(XPATH));
        JavascriptExecutor executor = ((JavascriptExecutor) driver);
        executor.executeScript("arguments[0].click();", element);

    }

    public void assertCurrentUrl(String expectedURL) {
        String actualURL = driver.getCurrentUrl();
        Assert.assertEquals(expectedURL, actualURL);
    }
    public void clickOnClearFilters(){
        linkClearFilter.click();
    }

}

