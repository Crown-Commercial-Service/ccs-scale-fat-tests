package com.scale.businessPages;

import com.scale.utility.Actions;
import com.scale.utility.ConfigurationReader;
import io.cucumber.java.Scenario;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

public class ContactCCSPage extends Actions{
    private WebDriver driver;
    private ConfigurationReader configReaderObj;
    private Logger log = LogManager.getLogger(ContactCCSPage.class);

    public ContactCCSPage(WebDriver driver, Scenario scenario) {
        this.driver = driver;
        PageFactory.initElements(driver, this);
        this.wait = new WebDriverWait(this.driver, Duration.ofSeconds(30));
    }

    @FindBy(xpath = "//h1[@class='govuk-heading-xl page-title'][contains(text(),'Contact CCS')]")
    private WebElement cCSContactPageHeader;

    public void contactCCSPage() {
        if (cCSContactPageHeader.isDisplayed()) {
            String homeLogoText = cCSContactPageHeader.getText();
            Assert.assertTrue(homeLogoText.contains("Contact CCS"));
            log.info("User is on Contact CCS page");
        } else {
            log.info("User is not on Contact CCS page");
        }
    }
}
