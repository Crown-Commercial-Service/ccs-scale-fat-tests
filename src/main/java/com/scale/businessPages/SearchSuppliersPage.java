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

public class SearchSuppliersPage extends Actions {
    private WebDriver driver;
    private Logger log = LogManager.getLogger(SearchSuppliersPage.class);
    @FindBy(id = "q")
    private WebElement fldSupplierName;

    @FindBy(id = "submit-search-button")
    private WebElement searchButton;

    @FindBy(xpath = "//*[@class='govuk-accordion__section-heading-text-focus']")
    private List<WebElement> relatedAgreementList;
    @FindBy(xpath = "//*[@class='govuk-heading-m govuk-!-font-size-17featured govuk-!-margin-0 govuk-!-font-weight-bold' or @class='govuk-heading-m govuk-!-font-size-17featured govuk-!-font-weight-bold']")
    private List<WebElement> supplierDetails;
    @FindBy(xpath = "//*[@class='govuk-warning-text']")
    private WebElement warningMessage;
    @FindBy(xpath = "//*[@class='govuk-accordion__section-heading-text']/span")
    private List<WebElement> filterCategoryType;
    @FindBy(xpath = "//*[@id='accordion-with-summary-sections-content-2']/div/div/label")
    private List<WebElement> subsectionFilterOption;

    public SearchSuppliersPage(WebDriver driver, Scenario scenario) {
        this.driver = driver;
        this.scenario = scenario;
        PageFactory.initElements(driver, this);
        this.wait = new WebDriverWait(this.driver, Duration.ofSeconds(30));
    }

    public void searchSupplierByName(String supplierName) {
        waitForSeconds(1);
        enterText(fldSupplierName, supplierName);
        waitForSeconds(2);
        searchButton.click();
    }

    public List<WebElement> getRelatedAgreementList() {
        return relatedAgreementList;
    }

    public List<WebElement> getSupplierDetails() {
        return supplierDetails;
    }

    public void assertWarningMessage() {
        waitForSeconds(3);
        String expectedHeading = String.valueOf(warningMessage.getLocation());
        Assert.assertEquals(expectedHeading,"(80, 703)");
    }
    public List<WebElement> getFilterCategoryType() {
        return filterCategoryType;
    }
    public List<WebElement> getsubsectionFilterOption() {
       waitForSeconds(5);
        return subsectionFilterOption;
    }

    public void selectFilterOption(String filterOption) {
        waitForSeconds(2);
        String XPATH = "//*[contains(text(),'" + filterOption + "')]//preceding-sibling::input[@type='radio']";
        WebElement element = driver.findElement(By.xpath(XPATH));
        JavascriptExecutor executor = ((JavascriptExecutor) driver);
        executor.executeScript("arguments[0].click();", element);

    }

}




