package com.scale.stepdefs;

import com.scale.businessPages.E2EPage;
import com.scale.businessPages.HomePage;
import com.scale.context.TestContext;
import com.scale.framework.utility.ConfigurationReader;
import com.scale.framework.utility.Log;
import com.scale.framework.utility.PageObjectManager;
import io.cucumber.java.Scenario;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.apache.log4j.Logger;
import org.openqa.selenium.WebDriver;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class E2ESteps {
    private Logger log = Log.getLogger(com.scale.stepdefs.GMPageSteps.class);
    private WebDriver driver;
    private PageObjectManager objectManager;
    private TestContext testContextObj;
    private Scenario scenario;
    private E2EPage e2EPageObj;
    private HomePage homePageObj;

    public E2ESteps(TestContext testContextObj) {
        this.testContextObj = testContextObj;
        driver = testContextObj.getDriver();
        objectManager = testContextObj.getObjectManager();
    }

    @When("User selects response of looking for {string}")
    public void user_selects_response_of_looking_for(String lookingFor) throws InterruptedException {
        homePageObj = objectManager.getHomePageObj();
        homePageObj.clickRadioButton(lookingFor);
        testContextObj.takeSnapShot();
    }

    @When("User selects how much budget {string} radio button")
    public void user_selects_how_much_budget_radio_button(String budgetRadio) throws InterruptedException {
        homePageObj = objectManager.getHomePageObj();
        homePageObj.clickRadioButton(budgetRadio);
        testContextObj.takeSnapShot();
        // e2EPageObj.selectBudget(budgetRadio);
    }

    @When("User enters budget amount {string} in the budget field")
    public void user_enters_budget_amount_in_the_budget_field(String enterBudgets) throws InterruptedException {
        e2EPageObj = objectManager.getE2EPageObj();
        e2EPageObj.enterBudget(enterBudgets);
    }

    @When("User selects how long contract {string} radio button")
    public void user_selects_how_long_contract_radio_button(String contractRadio) throws InterruptedException {
        //e2EPageObj = objectManager.getE2EPageObj();
        homePageObj = objectManager.getHomePageObj();
        homePageObj.clickRadioButton(contractRadio);
        testContextObj.takeSnapShot();
        //e2EPageObj.clickRadioButton(contractRadio);
    }

    @When("And User enters contract length {string} in the contract field")
    public void and_User_enters_contract_length_in_the_contract_field(String contractLength) throws InterruptedException {
        e2EPageObj = objectManager.getE2EPageObj();
        e2EPageObj.enterContractLength(contractLength);
    }

    @When("User selects service needs {string}")
    public void user_selects_service_needs(String serviceArea) throws InterruptedException {
        e2EPageObj = objectManager.getE2EPageObj();
        e2EPageObj.clickRadioButton(serviceArea);
    }

    @When("User selects additional facilities management services {string}")
    public void user_selects_additional_facilities_management_services(String addFacilities) throws InterruptedException {
        /*e2EPageObj = objectManager.getE2EPageObj();
        e2EPageObj.clickRadioButton(addFacilities);*/
        homePageObj = objectManager.getHomePageObj();
        homePageObj.clickRadioButton(addFacilities);
        testContextObj.takeSnapShot();
    }

    @When("User selects which sector are you looking for {string} radio button")
    public void user_selects_which_sector_are_you_looking_for_radio_button(String sectorRadio) throws InterruptedException {
        /*e2EPageObj = objectManager.getE2EPageObj();
        e2EPageObj.clickRadioButton(sectorRadio);*/
        homePageObj = objectManager.getHomePageObj();
        homePageObj.clickRadioButton(sectorRadio);
        testContextObj.takeSnapShot();
    }

    @When("User selects which services required {string}")
    public void user_selects_which_services_required(String serviceArea) throws InterruptedException {
        /*e2EPageObj = objectManager.getE2EPageObj();
        e2EPageObj.clickRadioButton(serviceArea);*/
        homePageObj = objectManager.getHomePageObj();
        homePageObj.clickRadioButton(serviceArea);
        testContextObj.takeSnapShot();

    }

    @When("User selects which services needed {string} multi selection")
    public void user_selects_which_services_needed(String serviceArea) throws InterruptedException {
        homePageObj = objectManager.getHomePageObj();
        String[] options = serviceArea.split("_");
        List<String> optionList = new ArrayList<String>(Arrays.asList(options));
        optionList.forEach((n) -> homePageObj.clickCheckBoxButton(n));
        testContextObj.takeSnapShot();
    }

    @When("User selects which location {string} multi selection")
    public void user_selects_which_location(String serviceArea) throws InterruptedException {
        homePageObj = objectManager.getHomePageObj();
        String[] options = serviceArea.split("_");
        List<String> optionList = new ArrayList<String>(Arrays.asList(options));
        optionList.forEach((n) -> homePageObj.clickCheckBoxButton(n));
        testContextObj.takeSnapShot();
    }

    @When("User selects which type of housing is required {string}")
    public void user_selects_which_type_of_housing_required(String serviceArea) throws InterruptedException {
        /*e2EPageObj = objectManager.getE2EPageObj();
        e2EPageObj.clickRadioButton(serviceArea);*/
        homePageObj = objectManager.getHomePageObj();
        homePageObj.clickRadioButton(serviceArea);
        testContextObj.takeSnapShot();
    }

    @When("User selects which type of housing services is required {string}")
    public void user_selects_which_type_of_housing_services_required(String serviceArea) throws InterruptedException {
        /*e2EPageObj = objectManager.getE2EPageObj();
        e2EPageObj.clickRadioButton(serviceArea);*/
        homePageObj = objectManager.getHomePageObj();
        homePageObj.clickRadioButton(serviceArea);
        testContextObj.takeSnapShot();
    }

    @When("User selects location {string} radio button where the service is required")
    public void user_selects_location_radio_button_where_the_service_is_required(String serviceLocation) throws InterruptedException {
        e2EPageObj = objectManager.getE2EPageObj();
        e2EPageObj.clickRadioButton(serviceLocation);
    }

    @Then("User selects {string} answer for the first question")
    public void user_performs_a_gm_journey(String answer) {
        e2EPageObj = objectManager.getE2EPageObj();
        e2EPageObj.lookingFor(answer);
        testContextObj.takeSnapShot();
    }

    @Then("User checks question content for question {string}")
    public void user_gets_question_content(String questionName) {
        e2EPageObj = objectManager.getE2EPageObj();
        ConfigurationReader configurationReader = new ConfigurationReader("config//QuestionTypesContent.properties");
        String expectedResult = configurationReader.returnProperty(questionName);
        e2EPageObj.checkQuestionContent(expectedResult);
    }

    @Then("User checks error handling content for question {string}")
    public void user_gets_error_handling_content(String questionName) {
        e2EPageObj = objectManager.getE2EPageObj();
        ConfigurationReader configurationReader = new ConfigurationReader("config//QuestionTypesContent.properties");
        String expectedResult1 = configurationReader.returnProperty(questionName + "-error");
        String expectedResult2 = configurationReader.returnProperty(questionName + "-error-sum");

        e2EPageObj.checkErrorHandlingContent(expectedResult1, expectedResult2);
    }

    @When("User selects which domain {string} are you interested radio button")
    public void user_selects_which_domain_are_you_interested_radio_button(String domainRadio) {
        homePageObj = objectManager.getHomePageObj();
        homePageObj.clickRadioButton(domainRadio);
        testContextObj.takeSnapShot();
    }

    @When("User selects what type of security {string} is needed radio button")
    public void user_selects_what_type_of_security_is_needed_radio_button(String secTypeRadio) {
        homePageObj = objectManager.getHomePageObj();
        homePageObj.clickRadioButton(secTypeRadio);
        testContextObj.takeSnapShot();
    }

    @When("User selects which technical security {string} is needed radio button")
    public void user_selects_which_technical_security_is_needed_radio_button(String techSecurity) {
        homePageObj = objectManager.getHomePageObj();
        homePageObj.clickRadioButton(techSecurity);
        testContextObj.takeSnapShot();
    }

    @When("User selects which services {string} required multi choice checkboxes")
    public void user_selects_which_services_required_multi_choice_checkboxes(String string) {
        homePageObj = objectManager.getHomePageObj();
        String[] options = string.split("_");
        List<String> optionList = new ArrayList<String>(Arrays.asList(options));
        optionList.forEach((n) -> homePageObj.clickCheckBoxButton(n));
        testContextObj.takeSnapShot();
    }

    @When("User select which {string} your requirements")
    public void user_select_which_your_requirements(String areaSuits) {
        homePageObj = objectManager.getHomePageObj();
        homePageObj.clickRadioButton(areaSuits);
        testContextObj.takeSnapShot();
    }

    @When("User selects which {string} your requirements")
    public void user_selects_which_your_requirements(String areaSuits) {
        homePageObj = objectManager.getHomePageObj();
        homePageObj.clickRadioButton(areaSuits);
        testContextObj.takeSnapShot();
    }

    @When("User selects additional services {string} required outside of tech services")
    public void user_selects_additional_services_required_outside_of_tech_services(String addFacilities) {
        homePageObj = objectManager.getHomePageObj();
        homePageObj.clickRadioButton(addFacilities);
        testContextObj.takeSnapShot();
    }

    @When("User selects additional FM services {string} required outside of tech services")
    public void user_selects_additional_fm_services_required_outside_of_tech_services(String addServiceRadio) {
        homePageObj = objectManager.getHomePageObj();
        homePageObj.clickRadioButton(addServiceRadio);
        testContextObj.takeSnapShot();
    }

    @When("User selects what sector {string}are you buying for radio button")
    public void user_selects_what_sector_are_you_buying_for_radio_button(String sectorRadio) {
        homePageObj = objectManager.getHomePageObj();
        homePageObj.clickRadioButton(sectorRadio);
        testContextObj.takeSnapShot();
    }

    @When("User selects what type of Housing {string} is needed radio button")
    public void user_selects_what_type_of_Housing_is_needed_radio_button(String housingTypeRadio) {

    }

    @When("User clicks on the back CTA")
    public void user_clicks_back_cta() {
        e2EPageObj = objectManager.getE2EPageObj();
        e2EPageObj.clickOnTheBackCTA();
        testContextObj.takeSnapShot();
    }

    @When("User selects what type {string} do you need radio button")
    public void user_selects_what_type_do_you_need_radio_button(String service) {
        homePageObj = objectManager.getHomePageObj();
        homePageObj.clickRadioButton(service);
        testContextObj.takeSnapShot();
    }
}
