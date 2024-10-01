package com.scale.stepdefs;

import com.scale.businessPages.ProductAndServicesPage;
import com.scale.context.TestContext;
import com.scale.utility.PageObjectManager;
import io.cucumber.java.Scenario;
import io.cucumber.java.en.*;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.openqa.selenium.WebDriver;

import java.util.List;

public class ProductsAndServicesStep {
    private Logger log = LogManager.getLogger(GMPageSteps.class);
    private WebDriver driver;
    private PageObjectManager objectManager;
    private TestContext testContextObj;
    private Scenario scenario;
    private ProductAndServicesPage productAndServicesPage;

    public ProductsAndServicesStep(TestContext testContextObj) {
        this.testContextObj = testContextObj;
        driver = testContextObj.getDriver();
        objectManager = testContextObj.getObjectManager();
        productAndServicesPage = objectManager.getproductAndServicesPageObj();
    }

    @Then("I should Top card layout and Additional services and agreements as expected")
    public void iShouldTopCardLayoutAndAdditionalServicesAndAgreementsAsExpected() {
        objectManager.getproductAndServicesPageObj().verifyCards();
        objectManager.getproductAndServicesPageObj().verifyAdditionalServicesAndAgreements();

    }

    @Then("I should assert Latest news and guidance and navigation")
    public void iShouldAssertLatestNewsAndGuidanceAndNavigation() {
        objectManager.getproductAndServicesPageObj().verifyNewsAndGuidanceComponent();
        objectManager.getproductAndServicesPageObj().verifyCardsInNewsAndGuidance();
        objectManager.getproductAndServicesPageObj().clickOnBrowseAllProductsAndServicesNewsArticles();
    }

    @Then("I should assert upcoming events and webinars component")
    public void iShouldAssertUpcomingEventsAndWebinarsComponent() {
        objectManager.getproductAndServicesPageObj().verifyUpcomingEventsAndWebinarsComponent();
        objectManager.getproductAndServicesPageObj().clickOnviewAll();
    }

    @Then("I should assert digital brochure Component")
    public void iShouldAssertDigitalBrochureComponent() {
        objectManager.getproductAndServicesPageObj().verifyDigitalBrochureComponent();
    }
}