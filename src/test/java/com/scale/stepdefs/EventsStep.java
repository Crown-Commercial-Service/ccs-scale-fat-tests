package com.scale.stepdefs;

import com.scale.businessPages.EventsPage;
import com.scale.context.TestContext;
import com.scale.framework.utility.PageObjectManager;
import cucumber.api.Scenario;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import io.cucumber.datatable.DataTable;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import java.util.Collection;
import java.util.List;

public class EventsStep {
    private Logger log = LogManager.getLogger(GMPageSteps.class);
    private WebDriver driver;
    private PageObjectManager objectManager;
    private TestContext testContextObj;
    private Scenario scenario;
    private EventsPage eventsPage;

    public EventsStep(TestContext testContextObj) {
        this.testContextObj = testContextObj;
        driver = testContextObj.getDriver();
        objectManager = testContextObj.getObjectManager();
        eventsPage = objectManager.getEventPageObj();
    }

    @Then("I assert the FilterCategory as expected")
    public void iAssertTheFilterCategoryAsExpected(DataTable filterCategory) {
        List<String> listAllTitles =  eventsPage
                .getAllListTitles(eventsPage.getFilterCategoryType());
        Assert.assertEquals(filterCategory.asList(), listAllTitles);
    }

    @Then("I assert the Event audience filter options as expected")
    public void iAssertTheEventAudienceFilterOptionsAsExpected(DataTable eventAudienceFilterOptions) {
        List<String> listAllTitles =  eventsPage
                .getAllListTitles(eventsPage.getEventAudienceFilterOptions());
        Assert.assertEquals(eventAudienceFilterOptions.asList(), listAllTitles);
    }

    @Then("I assert the Event type filter options as expected")
    public void iAssertTheEventTypeFilterOptionsAsExpected(DataTable eventTypeFilterOptions) {
        List<String> listAllTitles =  eventsPage
                .getAllListTitles(eventsPage.getEventTypeFilterOptions());
        Assert.assertEquals(eventTypeFilterOptions.asList(), listAllTitles);
    }

    @Then("I assert the product and services filter options as expected")
    public void iAssertTheProductAndServicesFilterOptionsAsExpected(DataTable productAndServiceFilterOptions) {
        List<String> listAllTitles = eventsPage
                .getAllListTitles(eventsPage.getProductAndServiceFilterOptions());
        System.out.println(listAllTitles.size());
        Assert.assertEquals(productAndServiceFilterOptions.asList(), listAllTitles);
    }

    @Then("I assert the Sector type filter options as expected")
    public void iAssertTheSectorTypeFilterOptionsAsExpected(DataTable sectorFilterOptions) {
        List<String> listAllTitles =  eventsPage
                .getAllListTitles(eventsPage.getSectorFilterOptions());
        Assert.assertEquals(sectorFilterOptions.asList(), listAllTitles);
    }

    @And("I select \"([^\"]*)\" filter Option")
    public void iSelectFilterOption(String filterOption) {
        objectManager.getEventPageObj().selectFilterOption(filterOption);
    }


    @And("I assert the current url  as \"([^\"]*)\"")
    public void iAssertTheCurrentUrlAs(String expectedURL) {
        objectManager.getEventPageObj().assertCurrentUrl(expectedURL);
    }

    @Then("I click on clear filter")
    public void iClickOnClearFilter() {
        objectManager.getEventPageObj().clickOnClearFilters();
    }
}