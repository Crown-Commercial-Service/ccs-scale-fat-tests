package com.scale.stepdefs;

import com.scale.businessPages.SearchSuppliersPage;
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


    @When("I enter {string} in the search supplier field")
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

    @And("User clicks on the {string} supplier link")
    public void userClicksOnTheSupplierLink(String supplierLink) {
        objectManager.getsearchSuppliersPageObj().selectLink(supplierLink);
    }


    @Then("I assert the Lot subsection FilterCategory as expected")
    public void iAssertTheLotSubsectionFilterCategoryAsExpected(DataTable subsectionFilterOption) {
        List<String> listAllTitles =  searchSuppliersPage
                .getAllListTitles(searchSuppliersPage.getsubsectionFilterOption());
        Assert.assertEquals(subsectionFilterOption.asList(), listAllTitles);
    }

    @And("I select {string} from filter option")
    public void iSelectFromFilterOption(String filterOption) {
        objectManager.getsearchSuppliersPageObj().selectFilterOption(filterOption);
    }
}