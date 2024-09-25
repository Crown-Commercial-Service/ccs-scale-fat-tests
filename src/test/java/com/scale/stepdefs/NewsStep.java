package com.scale.stepdefs;

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

public class NewsStep {
    private Logger log = LogManager.getLogger(GMPageSteps.class);
    private WebDriver driver;
    private PageObjectManager objectManager;
    private TestContext testContextObj;
    private Scenario scenario;
    private NewsPage newsPage;

    public NewsStep(TestContext testContextObj) {
        this.testContextObj = testContextObj;
        driver = testContextObj.getDriver();
        objectManager = testContextObj.getObjectManager();
        newsPage = objectManager.getNewsPageObj();
    }

    @Then("I assert the Type of article filter options as expected")
    public void iAssertTheTypeOfArticleFilterOptionsAsExpected(DataTable typeOfArticleFilterOption) {
        List<String> listAllTitles =  newsPage
                .getAllListTitles(newsPage.getTypeOfArticleFilterOption());
        Assert.assertEquals(typeOfArticleFilterOption.asList(), listAllTitles);
    }

    @Then("I assert the Sectors type filter options as expected")
    public void iAssertTheSectorsTypeFilterOptionsAsExpected(DataTable sectorFilterOption) {
        List<String> listAllTitles =  newsPage
                .getAllListTitles(newsPage.getSectorFilterOption());
        Assert.assertEquals(sectorFilterOption.asList(), listAllTitles);
    }

    @Then("I assert the news product and services filter options as expected")
    public void iAssertTheNewsProductAndServicesFilterOptionsAsExpected(DataTable pnsFilterOption) {
        List<String> listAllTitles =  newsPage
                .getAllListTitles(newsPage.getProductAndSectorFilterOption());
        Assert.assertEquals(pnsFilterOption.asList(), listAllTitles);
    }
}