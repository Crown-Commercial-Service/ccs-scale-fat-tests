package com.scale.businessPages;

import com.scale.framework.utility.Actions;
import com.scale.framework.utility.ConfigurationReader;
import cucumber.api.Scenario;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;
import java.util.List;

import static org.junit.Assert.assertTrue;

public class AgreementPage extends Actions {
    private WebDriver driver;
    private ConfigurationReader configReaderObj;
    private Logger log = LogManager.getLogger(AgreementPage.class);

    public AgreementPage(WebDriver driver, Scenario scenario){
        this.driver = driver;
        this.scenario = scenario;
        PageFactory.initElements(driver, this);
        this.wait = new WebDriverWait(this.driver, Duration.ofSeconds(30));
    }

    private String accordion = "button#accordion-default-heading-2[aria-expanded='true']";
    private String allAccordionSections = "button.govuk-accordion__open-all[aria-expanded='true']";

    @FindBy(xpath = "//*[@class='govuk-accordion__section-heading']/button")
    private List<WebElement> agreementDetailsOverview;

    @FindBy(xpath = "//*[@class='apollo-enclosure']/dl/dt")
    private List<WebElement> keyFactsDetails;

    @FindBy(xpath = "//*[@class='govuk-accordion__open-all']")
    private WebElement openAllAccordion;

    public List<WebElement> getKeyFacts(){
        return keyFactsDetails;
    }

    public List<WebElement> getAgreementDetails(){
        return agreementDetailsOverview;
    }


    public void expandAccordion(String element) {
        WebElement searchFrameworksPage = driver.findElement(By.cssSelector(element));
        assertTrue(searchFrameworksPage.isDisplayed());
    }

    public String getAccordion(){
        return accordion;
    }

    public String getAllAccordionSections(){
        return allAccordionSections;
    }

    public void clickOpenAll(){
        clickElement(openAllAccordion);
    }
}
