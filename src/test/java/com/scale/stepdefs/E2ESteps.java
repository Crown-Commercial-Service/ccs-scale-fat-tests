package com.scale.stepdefs;

import com.scale.businessPages.AboutCCSPage;
import com.scale.businessPages.E2EPage;
import com.scale.businessPages.HomePage;
import com.scale.context.TestContext;
import com.scale.utility.BrowserFactory;
import com.scale.utility.ConfigurationReader;

import io.cucumber.java.Scenario;
import io.cucumber.java.en.And;;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.cucumber.datatable.DataTable;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import static org.junit.Assert.assertEquals;

public class E2ESteps {

    private Logger log = LogManager.getLogger(com.scale.stepdefs.GMPageSteps.class);
    private WebDriver driver;
    private BrowserFactory browserFactory;
    private TestContext testContextObj;
    private Scenario scenario;
    private E2EPage e2EPageObj;
    private HomePage homePageObj;
    private ConfigurationReader configReaderObj;

    private AboutCCSPage aboutCCSPage;

    public E2ESteps(TestContext testContextObj) {
        configReaderObj = new ConfigurationReader();
        this.testContextObj = testContextObj;
        driver = testContextObj.getDriver();

    }

    @When("User selects response of looking for \"([^\"]*)\"")
    public void user_selects_response_of_looking_for(String lookingFor) throws InterruptedException {
        homePageObj.clickRadioButton(lookingFor);
        testContextObj.takeSnapShot();
        ;
    }

    @When("User selects how much budget \"([^\"]*)\" radio button")
    public void user_selects_how_much_budget_radio_button(String budgetRadio) throws InterruptedException {

        homePageObj.clickRadioButton(budgetRadio);
        testContextObj.takeSnapShot();
        ;
        // e2EPageObj.selectBudget(budgetRadio);
    }

    @When("User enters budget amount \"([^\"]*)\" in the budget field")
    public void user_enters_budget_amount_in_the_budget_field(String enterBudgets) throws InterruptedException {
        e2EPageObj.enterBudget(enterBudgets);
    }

    @When("User selects how long contract \"([^\"]*)\" radio button")
    public void user_selects_how_long_contract_radio_button(String contractRadio) throws InterruptedException {
        homePageObj.clickRadioButton(contractRadio);
        testContextObj.takeSnapShot();
        ;
        //e2EPageObj.clickRadioButton(contractRadio);
    }

    @When("And User enters contract length \"([^\"]*)\" in the contract field")
    public void and_User_enters_contract_length_in_the_contract_field(String contractLength) throws InterruptedException {
        e2EPageObj.enterContractLength(contractLength);
    }

    @When("User selects service needs \"([^\"]*)\"")
    public void user_selects_service_needs(String serviceArea) throws InterruptedException {
        e2EPageObj.clickRadioButton(serviceArea);
    }

    @When("User selects additional facilities management services \"([^\"]*)\"")
    public void user_selects_additional_facilities_management_services(String addFacilities) throws InterruptedException {
        /*e2EPageObj = e2EPageObj;
        e2EPageObj.clickRadioButton(addFacilities);*/
        homePageObj.clickRadioButton(addFacilities);
        testContextObj.takeSnapShot();
        ;
    }

    @When("User selects which sector are you looking for \"([^\"]*)\" radio button")
    public void user_selects_which_sector_are_you_looking_for_radio_button(String sectorRadio) throws InterruptedException {
        /*e2EPageObj = e2EPageObj;
        e2EPageObj.clickRadioButton(sectorRadio);*/
        homePageObj.clickRadioButton(sectorRadio);
        testContextObj.takeSnapShot();
        ;
    }

    @When("User selects which services required \"([^\"]*)\"")
    public void user_selects_which_services_required(String serviceArea) throws InterruptedException {
        /*e2EPageObj = e2EPageObj;
        e2EPageObj.clickRadioButton(serviceArea);*/
        homePageObj.clickRadioButton(serviceArea);
        testContextObj.takeSnapShot();
        ;

    }

    @When("User selects which services needed \"([^\"]*)\" multi selection")
    public void user_selects_which_services_needed(String serviceArea) throws InterruptedException {
        String[] options = serviceArea.split("_");
        List<String> optionList = new ArrayList<String>(Arrays.asList(options));
        optionList.forEach((n) -> homePageObj.clickCheckBoxButton(n));
        testContextObj.takeSnapShot();
        ;
    }

    @When("User selects which location \"([^\"]*)\" multi selection")
    public void user_selects_which_location(String serviceArea) throws InterruptedException {
        String[] options = serviceArea.split("_");
        List<String> optionList = new ArrayList<String>(Arrays.asList(options));
        optionList.forEach((n) -> homePageObj.clickCheckBoxButton(n));
        testContextObj.takeSnapShot();
        ;
    }

    @When("User selects which type of housing is required \"([^\"]*)\"")
    public void user_selects_which_type_of_housing_required(String serviceArea) throws InterruptedException {
        /*e2EPageObj = e2EPageObj;
        e2EPageObj.clickRadioButton(serviceArea);*/
        homePageObj.clickRadioButton(serviceArea);
        testContextObj.takeSnapShot();
        ;
    }

    @When("User selects which type of housing services is required \"([^\"]*)\"")
    public void user_selects_which_type_of_housing_services_required(String serviceArea) throws InterruptedException {
        /*e2EPageObj = e2EPageObj;
        e2EPageObj.clickRadioButton(serviceArea);*/
        homePageObj.clickRadioButton(serviceArea);
        testContextObj.takeSnapShot();
        ;
    }

    @When("User selects location \"([^\"]*)\" radio button where the service is required")
    public void user_selects_location_radio_button_where_the_service_is_required(String serviceLocation) throws InterruptedException {
        e2EPageObj.clickRadioButton(serviceLocation);
    }

    @Then("User selects \"([^\"]*)\" answer for the first question")
    public void user_performs_a_gm_journey(String answer) {
        e2EPageObj.lookingFor(answer);
        testContextObj.takeSnapShot();
        ;
    }

    @Then("User checks question content for question \"([^\"]*)\"")
    public void user_gets_question_content(String questionName) {
        ConfigurationReader configurationReader = new ConfigurationReader("config//QuestionTypesContent.properties");
        String expectedResult = configurationReader.returnProperty(questionName);
        e2EPageObj.checkQuestionContent(expectedResult);
    }

    @Then("User checks error handling content for question \"([^\"]*)\"")
    public void user_gets_error_handling_content(String questionName) {
        ConfigurationReader configurationReader = new ConfigurationReader("config//QuestionTypesContent.properties");
        String expectedResult1 = configurationReader.returnProperty(questionName + "-error");
        String expectedResult2 = configurationReader.returnProperty(questionName + "-error-sum");

        e2EPageObj.checkErrorHandlingContent(expectedResult1, expectedResult2);
    }

    @When("User selects which domain \"([^\"]*)\" are you interested radio button")
    public void user_selects_which_domain_are_you_interested_radio_button(String domainRadio) {
        homePageObj.clickRadioButton(domainRadio);
        testContextObj.takeSnapShot();
        ;
    }

    @When("User selects what type of security \"([^\"]*)\" is needed radio button")
    public void user_selects_what_type_of_security_is_needed_radio_button(String secTypeRadio) {

        homePageObj.clickRadioButton(secTypeRadio);
        testContextObj.takeSnapShot();
        ;
    }

    @When("User selects which technical security \"([^\"]*)\" is needed radio button")
    public void user_selects_which_technical_security_is_needed_radio_button(String techSecurity) {

        homePageObj.clickRadioButton(techSecurity);
        testContextObj.takeSnapShot();
        ;
    }

    @When("User selects which services \"([^\"]*)\" required multi choice checkboxes")
    public void user_selects_which_services_required_multi_choice_checkboxes(String string) {

        String[] options = string.split("_");
        List<String> optionList = new ArrayList<String>(Arrays.asList(options));
        optionList.forEach((n) -> homePageObj.clickCheckBoxButton(n));
        testContextObj.takeSnapShot();
        ;
    }

    @When("User select which \"([^\"]*)\" your requirements")
    public void user_select_which_your_requirements(String areaSuits) {

        homePageObj.clickRadioButton(areaSuits);
        testContextObj.takeSnapShot();
        ;
    }

    @When("User selects which \"([^\"]*)\" your requirements")
    public void user_selects_which_your_requirements(String areaSuits) {

        homePageObj.clickRadioButton(areaSuits);
        testContextObj.takeSnapShot();
        ;
    }

    @When("User selects additional services \"([^\"]*)\" required outside of tech services")
    public void user_selects_additional_services_required_outside_of_tech_services(String addFacilities) {

        homePageObj.clickRadioButton(addFacilities);
        testContextObj.takeSnapShot();
        ;
    }

    @When("User selects additional FM services \"([^\"]*)\" required outside of tech services")
    public void user_selects_additional_fm_services_required_outside_of_tech_services(String addServiceRadio) {

        homePageObj.clickRadioButton(addServiceRadio);
        testContextObj.takeSnapShot();
        ;
    }

    @When("User selects what sector \"([^\"]*)\"are you buying for radio button")
    public void user_selects_what_sector_are_you_buying_for_radio_button(String sectorRadio) {

        homePageObj.clickRadioButton(sectorRadio);
        testContextObj.takeSnapShot();
        ;
    }

    @When("User selects what type of Housing \"([^\"]*)\" is needed radio button")
    public void user_selects_what_type_of_Housing_is_needed_radio_button(String housingTypeRadio) {

    }

    @When("User clicks on the back CTA")
    public void user_clicks_back_cta() {
      
        e2EPageObj.clickOnTheBackCTA();
        testContextObj.takeSnapShot();
        ;
    }

    @When("User selects what type \"([^\"]*)\" do you need radio button")
    public void user_selects_what_type_do_you_need_radio_button(String service) {

        homePageObj.clickRadioButton(service);
        testContextObj.takeSnapShot();
        ;
    }

    @When("User selects the \"([^\"]*)\" radio button")
    public void user_selects_the_radio_button(String sectorRadio) {

        homePageObj.clickRadioButton(sectorRadio);
        testContextObj.takeSnapShot();
        ;
    }

    @Then("I should see the error message")
    public void i_should_see_the_error_message() {
      
        assertEquals((configReaderObj.get("errorMessage")), e2EPageObj.getErrorMessage());
    }

    @Then("I should see the error message {string}")
    public void i_should_see_the_error_message(String errMsg) {
        assertEquals(e2EPageObj.getErrorMessage(), errMsg);
    }

    @Then("I should the following header")
    public void i_should_the_following_header(DataTable agreementStatus) {
        List<String> listAllTitles = e2EPageObj
                .getAllListTitles(e2EPageObj.getHeaderText());
        Assert.assertEquals(agreementStatus.asList(), listAllTitles);
    }

    @When("I click on the first search results")
    public void i_click_on_the_first_search_results() {
        e2EPageObj.clickSearchAgreementResult();
        log.info("I click on the first search results");
    }


    @Then("I should see the PPG related components")
    public void iShouldSeeThePPGRelatedComponents() {
        e2EPageObj.assertPPGComponents();

        log.info("PPG components are present");
    }

    @And("I should see Primary Menu list")
    public void iShouldSeePrimaryMenuList() {
        e2EPageObj.assertPrimaryMenuList();
        log.info("PrimaryMenuList is as expected");
    }

    @And("I should see Secondary Menu list")
    public void iShouldSeeSecondaryMenuList() {
        e2EPageObj.assertSecondaryMenuList();
        log.info("SecondaryMenuList is as expected");
    }

    @And("I should see search components")
    public void iShouldSeeSearchComponents() {
        e2EPageObj.assertSearchComponents();
        log.info("Search Component is present");
    }

    @And("I verify homepage cardslist")
    public void iVerifyHomepageCardslist() {
        e2EPageObj.verifyHomePageCards();
        log.info("3 cards are available");
    }

    @And("I verify latest news article")
    public void iVerifyLatestNewsArticle() {
        e2EPageObj.verifyLatestNews();
        log.info("2 latest news articles are displayed");
    }

    @And("I should see campaignbox components")
    public void iShouldSeeCampaignboxComponents() {
        e2EPageObj.assertCampaignBoxComponents();
        log.info("CampaignBox components is present");
    }

    @And("I should see Glossary components")
    public void iShouldSeeGlossaryComponents() {
        e2EPageObj.assertGlossaryComponents();
        log.info("Glossary components is present");

    }

    @When("I click on BacktoTop button")
    public void iClickOnBacktoTopButton() {
        e2EPageObj.clickonBackToTop();
    }

    @Then("I should be on the top of the page")
    public void iShouldBeOnTheTopOfThePage() {
        e2EPageObj.assertTopOfThePage();
    }

    @When("I click on Browse all news articles link")
    public void iClickOnBrowseAllNewsArticlesLink() {
        e2EPageObj.clickonBrowseAllNewsArticlesLink();
    }

    @Then("I should be on News page")
    public void iShouldBeOnNewsPage() {
        e2EPageObj.assertNewspage();
    }

    @When("I click on footer {string} link verify the navigation")
    public void iClickOnFooterLinkVerifyTheNavigation(String BuyAndSupply) {
        e2EPageObj.clickOnFooterLinks(BuyAndSupply);
    }

    @And("I navigate to contact us form")
    public void iNavigateToContactUsForm() {
        e2EPageObj.clickOnContacts();
    }

    @And("I navigate to About")
    public void iNavigateToAbout() {
        e2EPageObj.clickOnAbout();
    }

    @When("I navigate to Events")
    public void iNavigateToEvents() {
        e2EPageObj.clickOnEvents();
    }

    @When("I navigate to News")
    public void iNavigateToNews() {
        e2EPageObj.clickOnNews();
    }

    @When("I navigate to Search supplier")
    public void iNavigateToSearchSupplier() {
        e2EPageObj.clickOnSearchSuppliers();
    }

    @When("I navigate to Product And Services")
    public void iNavigateToProductAndServices() {
        e2EPageObj.clickOnProductAndServices();
    }

    @When("I fill the contact form and submit")
    public void iFillTheContactFormAndSubmit() {
        e2EPageObj.fillContactForm();
    }

    @Then("I should see the success message")
    public void iShouldSeeTheSuccessMessage() {
        e2EPageObj.assertSuccessMessage();
    }

    @Then("I should see Helpful Links component")
    public void iShouldSeeHelpfulLinksComponent() {
        e2EPageObj.assertHelpfulLinksComponent();
    }

    @And("I should see agreement pricing component")
    public void iShouldSeeAgreementPricingComponent() {
        e2EPageObj.agreementPricingComponent();
    }

    @And("I should see Talk to us component")
    public void iShouldSeeTalkToUsComponent() {
        e2EPageObj.TalkToUsComponent();
    }

    @And("I navigate to Search agreement")
    public void iNavigateToSearchAgreement() {
        e2EPageObj.clickOnSearchAgreement();
    }

    @And("I navigate to Upcoming agreement")
    public void iNavigateToUpcomingAgreement() {
        e2EPageObj.clickOnUpcomingAgreement();
    }

    @Then("I should verify Live filter is defaulted")
    public void iShouldVerifyLiveFilterIsDefaulted() {
        e2EPageObj.VerifyLiveFilterIsDefaulted();
    }

    @When("I select Expired Option")
    public void iSelectExpiredOption() {
        e2EPageObj.selectExpiredOption();
    }

    @And("I verify the filter summary")
    public void iVerifyTheFilterSummary() {
        e2EPageObj.verifyFilterSummary();
    }

    @Then("I should see page component on search Agreement page")
    public void iShouldSeePageComponentOnSearchAgreementPage() {
        e2EPageObj.UpcomingAgreementComponent();
        e2EPageObj.assertHelpfulLinksComponent();
        e2EPageObj.agreementPricingComponent();
    }

    @And("I should verify View All filter is defaulted")
    public void iShouldVerifyViewAllFilterIsDefaulted() {
        e2EPageObj.VerifyViewAllFilterIsDefaulted();
    }


    @Then("I should see page component on Upcoming Agreement")
    public void iShouldSeePageComponentOnUpcomingAgreement() {
        e2EPageObj.contactUsComponent();
        e2EPageObj.downloadPieplineReportComponent();
        e2EPageObj.assertHelpfulLinksComponent();
    }


    @Then("I should see About page component")
    public void iShouldSeeAboutPageComponent() {
        e2EPageObj.informationforBuyerAndSupplierComponent();
        e2EPageObj.glossaryComponents();
    }


}


