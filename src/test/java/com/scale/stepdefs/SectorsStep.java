package com.scale.stepdefs;

import com.scale.businessPages.AgreementPage;
import com.scale.businessPages.E2EPage;
import com.scale.businessPages.SectorsPage;
import com.scale.context.TestContext;
import com.scale.utility.PageObjectManager;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.Scenario;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;

import java.util.List;

public class SectorsStep {
    private Logger log = LogManager.getLogger(GMPageSteps.class);
    private WebDriver driver;
    private PageObjectManager objectManager;
    private TestContext testContextObj;
    private Scenario scenario;
    private SectorsPage sectorsPage;
    private E2EPage e2EPage;

    public SectorsStep(TestContext testContextObj) {
        this.testContextObj = testContextObj;
        driver = testContextObj.getDriver();
        objectManager = testContextObj.getObjectManager();
        sectorsPage = objectManager.getSectorsPageObj();

    }
    @Then("I assert the Card heading as expected")
    public void iAssertTheCardHeadingAsExpected(DataTable heading) {
        List<String> listAllTitles = sectorsPage
                .getAllListTitles(sectorsPage.getSectorPageHeading());
        Assert.assertEquals(heading.asList(), listAllTitles);
    }

    @And("I click on {string} sector link")
    public void iClickOnSectorLink(String sectorLink) {
        objectManager.getSectorsPageObj().selectLinkFromCard(sectorLink);
    }


    @Then("I assert the sector page heading as expected")
    public void iAssertTheSectorPageHeadingAsExpected(DataTable subPageHeading) {
        List<String> listAllTitles = sectorsPage
                .getAllListTitles(sectorsPage.getSectorsSubPageHeading());
        Assert.assertEquals(subPageHeading.asList(), listAllTitles);
    }
    @And("I assert the tab heading as expected")
    public void iAssertTheTabHeadingAsExpected(DataTable tabHeading) {
        List<String> listAllTitles = sectorsPage
                .getAllListTitles(sectorsPage.getSectorsTabHeading());
        Assert.assertEquals(tabHeading.asList(), listAllTitles);
    }

    @And("I click on Download button without any input")
    public void iClickOnDownloadButtonWithoutAnyInput() {
        objectManager.getSectorsPageObj().clickOnDownload();
    }

    @And("I assert the errors on the form")
    public void iAssertTheErrorsOnTheForm(DataTable errorList) {
        List<String> listAllTitles = sectorsPage
                .getAllListTitles(sectorsPage.getErrorList());
        Assert.assertEquals(errorList.asList(), listAllTitles);
    }

    @Then("I fill the digital brochure form and download")
    public void iFillTheDigitalBrochureFormAndDownload() {
        objectManager.getSectorsPageObj().FillTheDigitalBrochureForm();
    }

    @And("I should see the download success message")
    public void iShouldSeeTheDownloadSuccessMessage() {
        objectManager.getSectorsPageObj().assertSuccessMessage();
    }
}
