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

public class SectorsPage extends Actions {
    private WebDriver driver;
    private ConfigurationReader configReaderObj;
    private Logger log = LogManager.getLogger(SectorsPage.class);
    @FindBy(xpath = "//h3[@class='govuk-heading-m' or @class='card-list__item__wrapper']")
    private List<WebElement> sectorPageHeading;
    @FindBy(xpath = "//h2[@class='govuk-heading-m intro__heading']")
    private List<WebElement> SectorsSubPageHeading;
    @FindBy(xpath = "//*[@class='govuk-tabs__tab']")
    private List<WebElement> SectorsTabHeading;
    @FindBy(xpath = "//*[@class='govuk-list govuk-error-summary__list']/a/li")
    private List<WebElement> ErrorList;
    @FindBy(xpath = "//*[contains(text(),'Download')]")
    private WebElement btnDownload;
    @FindBy(xpath = "//h1")
    private WebElement lblSuccessMessage;

    @FindBy(id = "name")
    private WebElement fldName;
    @FindBy(id = "jobTitle")
    private WebElement fldJobTitle;
    @FindBy(id = "company")
    private WebElement fldCompany;
    @FindBy(id = "email")
    private WebElement fldEmail;



    public SectorsPage(WebDriver driver, Scenario scenario) {
        this.driver = driver;
        PageFactory.initElements(driver, this);
        this.wait = new WebDriverWait(this.driver, Duration.ofSeconds(30));
    }


    public List<WebElement> getSectorPageHeading() {
        waitForSeconds(3);
        return sectorPageHeading;
    }

    public void selectLinkFromCard(String link) {
        waitForSeconds(2);
        String XPATH = "//*[contains(text(),'" + link + "')]//..//div//p[2]//a";
        WebElement element = driver.findElement(By.xpath(XPATH));
        JavascriptExecutor executor = ((JavascriptExecutor) driver);
        executor.executeScript("arguments[0].click();", element);

    }
    public List<WebElement> getSectorsSubPageHeading() {
        waitForSeconds(5);
        return SectorsSubPageHeading;
    }
    public List<WebElement> getSectorsTabHeading() {
        waitForSeconds(3);
        return SectorsTabHeading;
    }
    public void clickOnDownload(){
        btnDownload.click();
    }
    public void FillTheDigitalBrochureForm(){
        fldName.sendKeys("WebsiteAutomationUser");
        fldJobTitle.sendKeys("WebsiteAutomationTester");
        fldEmail.sendKeys("WebsiteAutomation@hotmail.com");
        fldCompany.sendKeys("WebsiteAutomation");
        waitForSeconds(3);
        btnDownload.click();

    }

    public List<WebElement> getErrorList() {
        waitForSeconds(3);
        return ErrorList;
    }
    public void assertSuccessMessage() {
        waitForSeconds(3);
        String successMessage = lblSuccessMessage.getText();
        Assert.assertEquals(successMessage,"You now have access to our digital brochure");
    }
}

