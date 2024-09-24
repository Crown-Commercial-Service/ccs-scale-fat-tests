package com.scale.stepdefs;

import com.scale.businessPages.ProductAndServicesPage;
import com.scale.context.TestContext;

import io.cucumber.java.Scenario;
import io.cucumber.java.en.Then;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.openqa.selenium.WebDriver;

public class ProductsAndServicesStep {
    private Logger log = LogManager.getLogger(GMPageSteps.class);
    private WebDriver driver;
    private TestContext testContextObj;
    private Scenario scenario;
    private ProductAndServicesPage productAndServicesPage;

    public ProductsAndServicesStep(TestContext testContextObj) {
        this.testContextObj = testContextObj;
        driver = testContextObj.getDriver();
    }

    @Then("I should Top card layout and Additional services and agreements as expected")
    public void iShouldTopCardLayoutAndAdditionalServicesAndAgreementsAsExpected() {
        productAndServicesPage.verifyCards();
        productAndServicesPage.verifyAdditionalServicesAndAgreements();

    }

    @Then("I should assert Latest news and guidance and navigation")
    public void iShouldAssertLatestNewsAndGuidanceAndNavigation() {
        productAndServicesPage.verifyNewsAndGuidanceComponent();
        productAndServicesPage.verifyCardsInNewsAndGuidance();
        productAndServicesPage.clickOnBrowseAllProductsAndServicesNewsArticles();
    }

    @Then("I should assert upcoming events and webinars component")
    public void iShouldAssertUpcomingEventsAndWebinarsComponent() {
        productAndServicesPage.verifyUpcomingEventsAndWebinarsComponent();
        productAndServicesPage.clickOnviewAll();
    }

    @Then("I should assert digital brochure Component")
    public void iShouldAssertDigitalBrochureComponent() {
        productAndServicesPage.verifyDigitalBrochureComponent();
    }
}