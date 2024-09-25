package com.scale.stepdefs;

import com.scale.businessPages.AgreementPage;
import com.scale.context.TestContext;
import com.scale.utility.PageObjectManager;
import io.cucumber.java.Scenario;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.cucumber.datatable.DataTable;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;

import java.util.List;

public class AgreementStep {
    private Logger log = LogManager.getLogger(com.scale.stepdefs.GMPageSteps.class);
    private WebDriver driver;
    private PageObjectManager objectManager;
    private TestContext testContextObj;
    private Scenario scenario;
    private AgreementPage agreementPage;

    public AgreementStep(TestContext testContextObj){
        this.testContextObj = testContextObj;
        driver = testContextObj.getDriver();
        objectManager = testContextObj.getObjectManager();
        agreementPage =objectManager.getAgreementPageObj();

    }

    @Then("I should see the details section")
    public void i_should_see_the_details_section(DataTable details) {
        List<String> listAllTitles = agreementPage
                .getAllListTitles(agreementPage.getAgreementDetails());
        Assert.assertEquals(details.asList(), listAllTitles);
    }
    @Then("I should see the below section")
    public void i_should_see_the_below_section(DataTable details) {
        List<String> listAllTitles = agreementPage
                .getAllListTitles(agreementPage.getAgreementDetailsforUpcomingAgreement());
        Assert.assertEquals(details.asList(), listAllTitles);
    }

    @Then("I should the key facts details")
    public void i_should_the_key_facts_details(DataTable details) {
        List<String> listAllTitles = agreementPage
                .getAllListTitles(agreementPage.getKeyFacts());
        Assert.assertEquals(details.asList(), listAllTitles);
    }

    @Then("The accordion should be expanded")
    public void the_accordion_should_be_expanded() {
        objectManager.getAgreementPageObj().expandAccordion(objectManager.getAgreementPageObj().getAccordion());
    }

    @Then("All the sections are expanded")
    public void all_the_sections_are_expanded() {
        objectManager.getAgreementPageObj().expandAccordion(objectManager.getAgreementPageObj().getAllAccordionSections());
    }

    @When("User clicks on the open all link")
    public void user_clicks_on_the_open_all_link() {
        objectManager.getAgreementPageObj().clickOpenAll();;
    }


}
