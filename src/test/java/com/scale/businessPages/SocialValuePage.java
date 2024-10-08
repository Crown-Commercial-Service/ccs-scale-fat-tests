package com.scale.businessPages;

import com.scale.utility.Actions;
import com.scale.utility.ConfigurationReader;
import io.cucumber.java.Scenario;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;
import java.util.List;

public class SocialValuePage extends Actions {
    private WebDriver driver;
    private ConfigurationReader configReaderObj;
    private Logger log = LogManager.getLogger(SocialValuePage.class);
    @FindBy(xpath = "//*[contains(text(),'How we can help you')]/../ul/li/div/h3")
    private List<WebElement> SocialvalueCardHeading;
    @FindBy(xpath = "//*[@class='govuk-heading-m intro__heading']")
    private List<WebElement> SocialvaluePageHeading;
    public SocialValuePage(WebDriver driver, Scenario scenario) {
        this.driver = driver;
        PageFactory.initElements(driver, this);
        this.wait = new WebDriverWait(this.driver, Duration.ofSeconds(30));
    }


    public List<WebElement> getSocialvalueCardHeading() {
        return SocialvalueCardHeading;
    }
    public List<WebElement> getSocialvaluePageHeading() {
        return SocialvaluePageHeading;
    }
    public void clickOnButton(String button){
        waitForSeconds(2);
        String XPATH = "//*[contains(text(),'" + button + "')]";
        WebElement element = driver.findElement(By.xpath(XPATH));
        JavascriptExecutor executor = ((JavascriptExecutor) driver);
        executor.executeScript("arguments[0].click();", element);
    }
}

