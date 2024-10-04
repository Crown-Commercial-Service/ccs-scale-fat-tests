package com.scale.stepdefs;


import com.scale.businessPages.InformationForBuyersAndSuppliersPage;
import com.scale.businessPages.NewsPage;
import com.scale.context.TestContext;
import com.scale.utility.PageObjectManager;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.Scenario;
import io.cucumber.java.en.*;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;

import java.util.List;

public class InformationForBuyersAndSuppliersStep {
    private Logger log = LogManager.getLogger(GMPageSteps.class);
    private WebDriver driver;
    private PageObjectManager objectManager;
    private TestContext testContextObj;
    private Scenario scenario;
    private InformationForBuyersAndSuppliersPage informationForBuyersAndSuppliersPage;

    public InformationForBuyersAndSuppliersStep(TestContext testContextObj) {
        this.testContextObj = testContextObj;
        driver = testContextObj.getDriver();
        objectManager = testContextObj.getObjectManager();
        informationForBuyersAndSuppliersPage = objectManager.getInformationForBuyersAndSuppliersPageObj();

    }

    @Then("I assert the Card heading as expected on Information for new buyers and suppliers layout")
    public void iAssertTheCardHeadingAsExpectedOnInformationForNewBuyersAndSuppliersLayout(DataTable firstColumnHeading) {
        List<String> listAllTitles = informationForBuyersAndSuppliersPage
                .getAllListTitles(informationForBuyersAndSuppliersPage.getFirstColumnHeadingHeading());
        Assert.assertEquals(firstColumnHeading.asList(), listAllTitles);
    }

    @Then("I assert the Card heading as expected on Navigating public procurement layout")
    public void iAssertTheCardHeadingAsExpectedOnNavigatingPublicProcurementLayout(DataTable secondColumnHeading) {
        List<String> listAllTitles = informationForBuyersAndSuppliersPage
                .getAllListTitles(informationForBuyersAndSuppliersPage.getSecondColumnHeadingHeading());
        Assert.assertEquals(secondColumnHeading.asList(), listAllTitles);
    }

    @Then("I assert Related articles count")
    public void iAssertRelatedArticlesCount() {
        objectManager.getInformationForBuyersAndSuppliersPageObj().verifyRelatedArticles();
    }

    @And("I click on {string} link")
    public void iClickOnLink(String link) {
        objectManager.getSectorsPageObj().selectLink(link);

    }
}