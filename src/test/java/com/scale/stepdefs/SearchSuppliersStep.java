package com.scale.stepdefs;

import com.scale.businessPages.SearchSuppliersPage;
import com.scale.context.TestContext;
import com.scale.framework.utility.PageObjectManager;
import cucumber.api.Scenario;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.cucumber.datatable.DataTable;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;

import java.util.List;

public class SearchSuppliersStep {
    private Logger log = LogManager.getLogger(GMPageSteps.class);
    private WebDriver driver;
    private PageObjectManager objectManager;
    private TestContext testContextObj;
    private Scenario scenario;
    private SearchSuppliersPage searchSuppliersPage;

    public SearchSuppliersStep(TestContext testContextObj) {
        this.testContextObj = testContextObj;
        driver = testContextObj.getDriver();
        objectManager = testContextObj.getObjectManager();
        searchSuppliersPage = objectManager.getsearchSuppliersPageObj();
    }


    @When("I enter \"([^\"]*)\" in the search supplier field")
    public void iEnterInTheSearchSupplierField(String supplierName) {
        objectManager.getsearchSuppliersPageObj().searchSupplierByName(supplierName);

    }

    @And("I should see Agreements and lots supplied to section")
    public void iShouldSeeAgreementsAndLotsSuppliedToSection(DataTable agreementRelated) {
        List<String> listAllTitles =  searchSuppliersPage
                .getAllListTitles(searchSuppliersPage.getRelatedAgreementList());
        Assert.assertEquals(agreementRelated.asList(), listAllTitles);
    }

    @Then("I should the Supplier details details")
    public void iShouldTheSupplierDetailsDetails(DataTable supplierDetails) {
        List<String> listAllTitles =  searchSuppliersPage
                .getAllListTitles(searchSuppliersPage.getSupplierDetails());
        Assert.assertEquals(supplierDetails.asList(), listAllTitles);
    }

    @Then("I should see warning message displayed on the top")
    public void iShouldSeeWarningMessageDisplayedOnTheTop() {
        objectManager.getsearchSuppliersPageObj().assertWarningMessage();
    }

    @Then("I assert the supplier FilterCategory as expected")
    public void iAssertTheSupplierFilterCategoryAsExpected(DataTable filterCategory) {
        List<String> listAllTitles =  searchSuppliersPage
                .getAllListTitles(searchSuppliersPage.getFilterCategoryType());
        Assert.assertEquals(filterCategory.asList(), listAllTitles);
    }

    @And("I select \"([^\"]*)\" from filter option")
    public void iSelectFromFilteroption(String filterOption) {
        objectManager.getsearchSuppliersPageObj().selectFilterOption(filterOption);
    }


    @Then("I assert the Lot subsection FilterCategory as expected")
    public void iAssertTheLotSubsectionFilterCategoryAsExpected(DataTable subsectionFilterOption) {
        List<String> listAllTitles =  searchSuppliersPage
                .getAllListTitles(searchSuppliersPage.getsubsectionFilterOption());
        Assert.assertEquals(subsectionFilterOption.asList(), listAllTitles);
    }
}