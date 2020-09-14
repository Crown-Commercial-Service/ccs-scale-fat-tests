package com.scale.businessPages;

import com.scale.framework.utility.*;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.apache.log4j.Logger;
import cucumber.api.Scenario;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class HomePage extends Actions {

    private WebDriver driver;
    private ConfigurationReader configReaderObj;
    private Logger log = Log.getLogger(HomePage.class);


    /*@FindBy(how = How.XPATH, using = "//button[@class='homepage-hero__search-button']")
    private WebElement searchButton;*/

    @FindBy(xpath = "//button[@class='homepage-hero__search-button']")
    private WebElement searchButton;

    @FindBy(xpath = "//input[@id='framework_q']")
    private WebElement enterFrameworkDetails;

    @FindBy(partialLinkText = "Start now")
    private WebElement startNowButton;

    public HomePage(WebDriver driver, Scenario scenario) {
        this.driver = driver;
        this.scenario = scenario;
        PageFactory.initElements(driver, this);
        this.wait = new WebDriverWait(this.driver, 30);

    }

    public void homePage1() {
        WebElement homeLogo = driver.findElement(By.xpath("//a[@class='logo']//img"));
        if (homeLogo.isDisplayed()) {
            waitForSeconds(2);
            String homeLogoText = homeLogo.getAttribute("alt");
            Assert.assertTrue(homeLogoText.contains("CCS homepage"));
            log.info("User is on CCS home page");
            scenario.write("User is on CCS home page");
        } else {
            log.info("User is not on CCS home page");
            scenario.write("User is not on CCS home page");
        }
    }

    public void enterFrameworkDetails(String framework) {
        waitForSeconds(1);
        enterText(enterFrameworkDetails, framework);
        waitForSeconds(2);
        searchButton.click();
        //clickButton("search");
    }

    public void ClickStartNow(String buttonName){
        JavascriptExecutor executor = (JavascriptExecutor)driver;
        executor.executeScript("arguments[0].click();", startNowButton);
      //  startNowButton.click();
    }

    public void clickButton(String buttonName) {
        waitForSeconds(3);
        String XPATH = "//*[contains(text(),'" + buttonName +"')]";
        WebElement element = wait.until(ExpectedConditions.elementToBeClickable(By.xpath(XPATH)));
        JavascriptExecutor executor = ((JavascriptExecutor) driver);
        executor.executeScript("arguments[0].click();", element);
//	        ((JavascriptExecutor) driver).executeScript("arguments[0].scrollIntoView(true);", element);
        //   waitForSeconds(2);
        //element.click();
        log.info("Clicked on " + buttonName + " button");
        scenario.write(" User Clicked on " + buttonName + " button");
    }

    public void clickRadioButton(String radioButtonName) {
        waitForSeconds(3);
        String XPATH = "//*[contains(text(),'"+ radioButtonName +"')]//preceding-sibling::input[@type='radio']";
        WebElement element = driver.findElement(By.xpath(XPATH));
        JavascriptExecutor executor = ((JavascriptExecutor) driver);
        executor.executeScript("arguments[0].click();", element);
       // element.click();
        log.info("Buyer clicked on " + radioButtonName + " radio button");
        scenario.write(" Buyer clicked on " + radioButtonName + " radio button");
    }

    public void clickCheckBoxButton(String checkboxButtonName) {
        waitForSeconds(3);
        String XPATH = "//*[contains(text(),'"+ checkboxButtonName +"')]//preceding-sibling::input[@type='checkbox']";
        WebElement element = driver.findElement(By.xpath(XPATH));
        JavascriptExecutor executor = ((JavascriptExecutor) driver);
        executor.executeScript("arguments[0].click();", element);
        // element.click();
        log.info("Buyer clicked on " + checkboxButtonName + " checkbox  button");
        scenario.write(" Buyer clicked on " + checkboxButtonName + " checkbox button");
    }
}
