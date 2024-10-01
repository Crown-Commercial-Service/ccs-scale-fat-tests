package com.scale.businessPages;

import com.scale.utility.Actions;
import io.cucumber.java.Scenario;
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
    private Logger log = LogManager.getLogger(AgreementPage.class);

    public AgreementPage(WebDriver driver, Scenario scenario){
        this.driver = driver;
        PageFactory.initElements(driver, this);
        this.wait = new WebDriverWait(this.driver, Duration.ofSeconds(30));
    }

    private String accordion = "//button[@aria-controls='accordion-default-content-1' and @aria-expanded='true']";
    private String allAccordionSections = "//button[@class='govuk-accordion__show-all' and @aria-expanded='true']";

    @FindBy(xpath = "//*[@class='govuk-accordion__section-heading-text']")
    private List<WebElement> agreementDetailsOverview;
    @FindBy(xpath = "//h3")
    private List<WebElement> agreementDetailsOverviewForUpcomingAgreement;
    @FindBy(xpath = "//*[@class='apollo-enclosure']/dl/dt")
    private List<WebElement> keyFactsDetails;

    @FindBy(xpath = "//*[contains(text(),'Show all sections')]")
    private WebElement openAllAccordion;

    public List<WebElement> getKeyFacts(){
        return keyFactsDetails;
    }

    public List<WebElement> getAgreementDetails(){
        return agreementDetailsOverview;
    }
    public List<WebElement> getAgreementDetailsforUpcomingAgreement(){
        return agreementDetailsOverviewForUpcomingAgreement;
    }


    public void expandAccordion(String element) {
        WebElement searchFrameworksPage = driver.findElement(By.xpath(element));
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
