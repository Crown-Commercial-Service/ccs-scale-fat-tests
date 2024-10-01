package com.scale.stepdefs;

import com.scale.businessPages.EventsPage;
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

    @Then("I select {string} filter Option")
    public void i_select_filter_option(String filterOption) {
        objectManager.getEventPageObj().selectFilterOption(filterOption);
    }


    @Then("I assert the current url  as {string}")
    public void i_assert_the_current_url_as(String expectedURL) {
        objectManager.getEventPageObj().assertCurrentUrl(expectedURL);
    }

    @Then("I click on clear filter")
    public void iClickOnClearFilter() {
        objectManager.getEventPageObj().clickOnClearFilters();
    }
}