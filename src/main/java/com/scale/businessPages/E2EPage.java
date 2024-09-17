package com.scale.businessPages;

import com.scale.framework.utility.Actions;
import com.scale.framework.utility.ConfigurationReader;
import cucumber.api.Scenario;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;
import java.util.List;


public class E2EPage extends Actions {
    public static WebDriver driver;
    private ConfigurationReader configReaderObj;
    private Logger log = LogManager.getLogger(E2EPage.class);


    @FindBy(id = "changed-name-hint")
    private WebElement questionPageContent;

    @FindBy(id = "no-selection")
    private WebElement errorHandling;

    @FindBy(id = "error-summary-container")
    private WebElement errorSummaryContainer;

    @FindBy(id = "error-summary-title")
    private WebElement errorSummaryTitle;

    @FindBy(xpath = "//li[@id='error-summary-container']//a")
    private WebElement errorSummaryLink;

    @FindBy(xpath = "//div[@id='form-layout']//div[3]//div[1]//input[1]")
    private WebElement firstSelectableElement;

    @FindBy(xpath = "//div[@class='govuk-radios govuk-radios--conditional']")
    private WebElement serviceRadio;

    @FindBy(xpath = "//label[@class='govuk-label govuk-radios__label'][contains(text(),'Product')]")
    private WebElement productRadio;

    @FindBy(xpath = "//a[contains(text(),'Back')]")
    private WebElement backCTA;

    @FindBy(xpath = "")
    private WebElement budRadioYes;

    @FindBy(xpath = "")
    private WebElement budRadioNo;

    @FindBy(xpath = "//*[@class='govuk-radios__conditional conditional-input']/div/span[2]/span/input")
    private WebElement enterBudget;

    @FindBy(xpath = "//*[@class='govuk-radios__conditional conditional-input']/div/span[2]/span/input")
    private WebElement enterContract;

    @FindBy(xpath = "")
    private WebElement contRadioYes;

    @FindBy(xpath = "")
    private WebElement contRadioNo;

    @FindBy(xpath = "")
    private WebElement cleanRoomRadio;

    @FindBy(xpath = "")
    private WebElement theatrePackRadio;

    @FindBy(xpath = "")
    private WebElement linenHireRadio;

    @FindBy(xpath = "")
    private WebElement standardRadio;

    @FindBy(xpath = "")
    private WebElement legalCostRadio;

    @FindBy(xpath = "")
    private WebElement employmentLitigiRadio;

    @FindBy(xpath = "")
    private WebElement litigationRadio;

    @FindBy(xpath = "")
    private WebElement finComplexRadio;

    @FindBy(xpath = "")
    private WebElement multiServicesRadio;

    @FindBy(xpath = "")
    private WebElement anythingElseRadio;

    @FindBy(xpath = "")
    private WebElement broadFibreRadio;

    @FindBy(xpath = "")
    private WebElement broadServiceRadio;

    @FindBy(xpath = "")
    private WebElement techStrategyRadio;

    @FindBy(xpath = "")
    private WebElement transTransformationRadio;

    @FindBy(xpath = "")
    private WebElement operServicesRadio;

    @FindBy(xpath = "")
    private WebElement progLargeProjectsRadio;

    @FindBy(xpath = "")
    private WebElement railRadio;

    @FindBy(xpath = "")
    private WebElement eDisclosureRadio;

    @FindBy(xpath = "")
    private WebElement eDiscoveryRadio;

    @FindBy(xpath = "")
    private WebElement costLawyerRadio;

    @FindBy(xpath = "")
    private WebElement otherMultiRadio;

    @FindBy(xpath = "")
    private WebElement noRadio;

    @FindBy(xpath = "")
    private WebElement securityRadio;

    @FindBy(xpath = "")
    private WebElement groundMainRadio;

    @FindBy(xpath = "")
    private WebElement cateringRadio;

    @FindBy(xpath = "")
    private WebElement pestControlRadio;

    @FindBy(xpath = "")
    private WebElement OtherRadio;

    @FindBy(xpath = "")
    private WebElement propertyConstRadio;

    @FindBy(xpath = "")
    private WebElement transpoRailRadio;

    @FindBy(xpath = "")
    private WebElement propertyRadio;

    @FindBy(xpath = "")
    private WebElement centGovtRadio;

    @FindBy(xpath = "")
    private WebElement locGovtRadio;

    @FindBy(xpath = "")
    private WebElement miniOfDefenceRadio;

    @FindBy(xpath = "")
    private WebElement devolvedRadio;

    @FindBy(xpath = "")
    private WebElement educationRadio;

    @FindBy(xpath = "")
    private WebElement healthRadio;

    @FindBy(xpath = "")
    private WebElement blueLightRadio;

    @FindBy(xpath = "")
    private WebElement housingRadio;

    @FindBy(xpath = "")
    private WebElement charitiesRadio;

    @FindBy(xpath = "")
    private WebElement engWalesRadio;

    @FindBy(xpath = "")
    private WebElement scotlandRadio;

    @FindBy(xpath = "")
    private WebElement northIrelandRadio;

    @FindBy(xpath = "")
    private WebElement inforAssuredCheckbox;

    @FindBy(xpath = "")
    private WebElement softwareCheckbox;

    @FindBy(xpath = "")
    private WebElement hardwareCheckbox;

    @FindBy(xpath = "")
    private WebElement hardwareSoftwareCheckbox;

    @FindBy(xpath = "")
    private WebElement audioVisualCheckbox;

    @FindBy(xpath = "")
    private WebElement deliveryCheckbox;

    @FindBy(xpath = "")
    private WebElement extendedWarrantCheckbox;

    @FindBy(xpath = "")
    private WebElement assetTaggingCheckbox;

    @FindBy(xpath = "")
    private WebElement trainingCheckbox;

    @FindBy(xpath = "")
    private WebElement installationCheckbox;

    @FindBy(xpath = "")
    private WebElement imagingCheckbox;

    @FindBy(xpath = "")
    private WebElement configurationCheckbox;

    @FindBy(xpath = "")
    private WebElement networkTestCheckbox;

    @FindBy(xpath = "")
    private WebElement preDelInspectionCheckbox;

    @FindBy(xpath = "")
    private WebElement storageCheckbox;

    @FindBy(xpath = "")
    private WebElement disposalCheckbox;

    @FindBy(xpath = "")
    private WebElement Checkbox;

    @FindBy(xpath = "")
    private WebElement lookingQuestionText;

    @FindBy(xpath = "//*[@id='head-error-msg']")
    private WebElement errorMsg;

    @FindBy(xpath = "//h2")
    private List<WebElement> headerThree;

    @FindBy(xpath = "//h3//a")
    private WebElement searchAgreementResultLink;
    @FindBy(xpath = "//div[@class='ppg-login']")
    private WebElement ppgComponents;
    @FindBy(xpath = "//*[@class='govuk-homepage-search-forms']")
    private WebElement searchComponents;
    @FindBy(xpath = "//*[@class='govuk-grid-column-one-half homepage-campaign-box']")
    private WebElement campaignBoxComponents;
    @FindBy(xpath = "//*[@class='glossary-box-container']")
    private WebElement homepageGlossaryComponents;
    @FindBy(xpath = "//*[@class='govuk-heading-m'][text() ='Information for buyers and suppliers']")
    private WebElement informationForBuyerAndSupplierHeading;
    @FindBy(xpath = "//*[@class='govuk-heading-m'][text() ='Glossary']")
    private WebElement glossaryHeading;

    @FindBy(xpath = "//*[@class='apollo-call-to-action apollo-call-to-action--help']")
    private WebElement glossaryComponents;
    @FindBy(xpath = "//*[@class='apollo-call-to-action apollo-call-to-action--aggregation']")
    private WebElement informationforBuyerAndSupplierComponent;
    @FindBy(id = "BackToTopButton")
    private WebElement btnBackToTop;
    @FindBy(xpath = "//*[contains(text(),'Browse all news articles')]")
    private WebElement linkBrowseAllNewsArticles;
    @FindBy(xpath = "//*[contains(text(),'Contracts finder')]")
    private WebElement ContractsFinder;
    @FindBy(xpath = "//*[contains(text(),'Sign in to purchasing platform')]")
    private WebElement SignInToPurchasingplatform;
    @FindBy(xpath = "//*[contains(text(),'Sign in to digital marketplace')]")
    private WebElement SignInToDigitalMarketplace;
    @FindBy(xpath = "//*[contains(text(),'Sign in to fleet portal')]")
    private WebElement SignInToFleetPortal;


    @FindBy(xpath = "(//*[contains(text(),'Contact')])[1]")
    private WebElement menuContact;
    @FindBy(xpath = "(//*[contains(text(),'About')])[1]")
    private WebElement menuAbout;
    @FindBy(xpath = "(//*[contains(text(),'Events')])[1]")
    private WebElement menuEvents;
    @FindBy(xpath = "(//*[contains(text(),'News')])[1]")
    private WebElement menuNews;
    @FindBy(xpath = "(//*[contains(text(),'Search suppliers')])[1]")
    private WebElement menuSearchSuppliers;
    @FindBy(xpath = "//*[contains(text(),'Products and Services')]")
    private WebElement menuProductAndServices;

    @FindBy(xpath = "//h1")
    private WebElement headingText;

    @FindBy(xpath = "(//*[contains(text(),'Search agreements')])[1]")
    private WebElement menuSearchAgreement;
    @FindBy(xpath = "//*[contains(text(),'Upcoming agreements')]")
    private WebElement menuUpcomingAgreement;

    @FindBy(id = "name")
    private WebElement fldName;

    @FindBy(id = "email")
    private WebElement fldEmail;

    @FindBy(id = "00Nb0000009IXEs")
    private WebElement fldJobTitle;

    @FindBy(id = "company")
    private WebElement fldCompany;
    @FindBy(id = "more-detail")
    private WebElement fldComment;
    @FindBy(id = "submit")
    private WebElement btnSubmit;
    @FindBy(xpath = "//h1")
    private WebElement lblSuccessMessage;
    @FindBy(xpath = "//*[contains(text(),'Helpful Links')]")
    private WebElement HelpfulLinksComponent;
    @FindBy(xpath = "//*[contains(text(),'Do you need help requesting agreement pricing?')]")
    private WebElement agreementPricingComponent;
    @FindBy(xpath = "//*[contains(text(),'Talk to us')]")
    private WebElement TalkToUsComponent;
    @FindBy(id = "live")
    private WebElement chkBoxLive;
    @FindBy(id = "all")
    private WebElement chkBoxViewALL;

    @FindBy(id = "expired")
    private WebElement chkBoxExpired;
    @FindBy(xpath = "//*[@class='ccs-filters-summary__list']")
    private WebElement filterSummary;
    @FindBy(xpath = "(//*[contains(text(),'Upcoming agreements')])[2]")
    private WebElement upcomingAgreementComponent;
    @FindBy(xpath = "//h2[contains(text(),'Contact')]")
    private WebElement contactUsComponent;
    @FindBy(xpath = "//h2[contains(text(),'Download Pipeline report')]")
    private WebElement downloadPieplineReportComponent;
    @FindBy(xpath = "//*[@class='aside__heading'][text() ='Contact']")
    private WebElement contactHeading;
    @FindBy(xpath = "//*[@class='aside__heading'][text() ='Download Pipeline report']")
    private WebElement reportHeading;
    @FindBy(xpath = "//*[@class='aside__heading'][text() ='Helpful Links']")
    private WebElement helpfulLinkHeading;
    @FindBy(xpath = "//*[@class='aside__heading'][text() ='Upcoming agreements']")
    private WebElement upcomingAgreementHeading;
    @FindBy(xpath = "//*[@class='aside__heading'][text() ='Do you need help requesting agreement pricing?']")
    private WebElement agreementPricingHeading;
    @FindBy(xpath = "//*[@class='govuk-heading-m'][text() ='Talk to us']")
    private WebElement talkToUsHeading;


    public E2EPage(WebDriver driver, Scenario scenario) {
        this.driver = driver;
        this.scenario = scenario;
        PageFactory.initElements(driver, this);
        this.wait = new WebDriverWait(this.driver, Duration.ofSeconds(30));
    }

    public void lookingFor(String lookingFor) {
        waitForSeconds(1);
        if (lookingFor.equalsIgnoreCase("service")) {
            if (serviceRadio.isDisplayed()) {
                serviceRadio.click();
            }
        } else if (serviceRadio.isDisplayed()) {
            productRadio.click();
        }
        scenario.write("Buyer clicked on " + lookingFor + " radio button");
    }

    public void selectBudget(String budgetRadio) {
        waitForSeconds(1);
        if (budgetRadio.equalsIgnoreCase("yes")) {
            if (budRadioYes.isDisplayed()) budRadioYes.click();
        } else if (budRadioNo.isDisplayed()) {
            budRadioNo.click();
        }
        scenario.write("Buyer clicked on " + budgetRadio + " radio button");
    }

    public void enterBudget(String enterBudgets) {
        waitForSeconds(1);
        enterBudget.sendKeys(enterBudgets);
        scenario.write("Buyer entered budget as " + enterBudgets + "");
    }

    public void selectContract(String contractRadio) {
        waitForSeconds(1);
        if (contractRadio.equalsIgnoreCase("yes")) {
            if (contRadioYes.isDisplayed()) contRadioYes.click();
        } else if (contRadioNo.isDisplayed()) {
            contRadioNo.click();
        }
        scenario.write("Buyer clicked on " + contractRadio + " radio button");
    }

    public void enterContractLength(String contractLength) {
        waitForSeconds(1);
        enterContract.sendKeys(contractLength);
        scenario.write("Buyer entered contract length as " + contractLength + "");
    }

    public void selectServiceAreaRadio(String serviceArea) {
        waitForSeconds(1);
        switch (serviceArea.toUpperCase()) {
            case "CleanRoom":
                if (serviceArea.equalsIgnoreCase("yes")) {
                    if (cleanRoomRadio.isDisplayed()) {
                        cleanRoomRadio.click();
                    }
                }
                break;
            case "TheatrePack":
                if (serviceArea.equalsIgnoreCase("yes")) {
                    if (theatrePackRadio.isDisplayed()) {
                        theatrePackRadio.click();
                    }
                }
                break;
            case "LineHire":
                if (serviceArea.equalsIgnoreCase("yes")) {
                    if (linenHireRadio.isDisplayed()) {
                        linenHireRadio.click();
                    }
                }
                break;

            case "Rail":
                if (serviceArea.equalsIgnoreCase("yes")) {
                    if (railRadio.isDisplayed()) {
                        railRadio.click();
                    }
                }
                break;

            case "eDisclosure":
                if (serviceArea.equalsIgnoreCase("yes")) {
                    if (eDisclosureRadio.isDisplayed()) {
                        eDisclosureRadio.click();
                    }
                }
                break;

            case "eDiscovery":
                if (serviceArea.equalsIgnoreCase("yes")) {
                    if (eDiscoveryRadio.isDisplayed()) {
                        eDiscoveryRadio.click();
                    }
                }
                break;

            case "CostLawyer":
                if (serviceArea.equalsIgnoreCase("yes")) {
                    if (costLawyerRadio.isDisplayed()) {
                        costLawyerRadio.click();
                    }
                }
                break;
            case "OtherMultiple":
                if (serviceArea.equalsIgnoreCase("yes")) {
                    if (otherMultiRadio.isDisplayed()) {
                        otherMultiRadio.click();
                    }
                }
                break;
            case "Property":
                if (serviceArea.equalsIgnoreCase("yes")) {
                    if (propertyRadio.isDisplayed()) {
                        propertyRadio.click();
                    }
                }
                break;

            case "TransportRail":
                if (serviceArea.equalsIgnoreCase("yes")) {
                    if (transpoRailRadio.isDisplayed()) {
                        transpoRailRadio.click();
                    }
                }
                break;
            case "Standard":
                if (serviceArea.equalsIgnoreCase("yes")) {
                    if (standardRadio.isDisplayed()) {
                        standardRadio.click();
                    }
                }
                break;

            case "LegalCost":
                if (serviceArea.equalsIgnoreCase("yes")) {
                    if (legalCostRadio.isDisplayed()) {
                        legalCostRadio.click();
                    }
                }
                break;

            case "EmploymentLitigation":
                if (serviceArea.equalsIgnoreCase("yes")) {
                    if (employmentLitigiRadio.isDisplayed()) {
                        employmentLitigiRadio.click();
                    }
                }
                break;

            case "Litigation":
                if (serviceArea.equalsIgnoreCase("yes")) {
                    if (litigationRadio.isDisplayed()) {
                        litigationRadio.click();
                    }
                }
                break;

            case "Finance&Complex":
                if (serviceArea.equalsIgnoreCase("yes")) {
                    if (finComplexRadio.isDisplayed()) {
                        finComplexRadio.click();
                    }
                }
                break;

            case "MultipleServices":
                if (serviceArea.equalsIgnoreCase("yes")) {
                    if (multiServicesRadio.isDisplayed()) {
                        multiServicesRadio.click();
                    }
                }
                break;

            case "AnythingElse":
                if (serviceArea.equalsIgnoreCase("yes")) {
                    if (anythingElseRadio.isDisplayed()) {
                        anythingElseRadio.click();
                    }
                }
                break;

            case "BroadBandFibre":
                if (serviceArea.equalsIgnoreCase("yes")) {
                    if (broadFibreRadio.isDisplayed()) {
                        broadFibreRadio.click();
                    }
                }
                break;
            case "BroadBandService":
                if (serviceArea.equalsIgnoreCase("yes")) {
                    if (broadServiceRadio.isDisplayed()) {
                        broadServiceRadio.click();
                    }
                }
                break;
            case "TechnologyStrategy":
                if (serviceArea.equalsIgnoreCase("yes")) {
                    if (techStrategyRadio.isDisplayed()) {
                        techStrategyRadio.click();
                    }
                }
                break;
            case "TransitionTransformation":
                if (serviceArea.equalsIgnoreCase("yes")) {
                    if (transTransformationRadio.isDisplayed()) {
                        transTransformationRadio.click();
                    }
                }
                break;

            case "OperationalServices":
                if (serviceArea.equalsIgnoreCase("yes")) {
                    if (operServicesRadio.isDisplayed()) {
                        operServicesRadio.click();
                    }
                }
                break;

            case "ProgrammesLargeProjects":
                if (serviceArea.equalsIgnoreCase("yes")) {
                    if (progLargeProjectsRadio.isDisplayed()) {
                        progLargeProjectsRadio.click();
                    }
                }
                break;


        }
        scenario.write("Buyer clicked on " + serviceArea + " radio button");
    }

    public void selectAddFacilities(String addFacilities) {
        waitForSeconds(1);
        switch (addFacilities.toUpperCase()) {
            case "No":
                if (addFacilities.equalsIgnoreCase("yes")) {
                    if (noRadio.isDisplayed()) {
                        noRadio.click();
                    }
                }
                break;

            case "Security":
                if (addFacilities.equalsIgnoreCase("yes")) {
                    if (securityRadio.isDisplayed()) {
                        securityRadio.click();
                    }
                }
                break;

            case "GroundMaintenance":
                if (addFacilities.equalsIgnoreCase("yes")) {
                    if (groundMainRadio.isDisplayed()) {
                        groundMainRadio.click();
                    }
                }
                break;
            case "Catering":
                if (addFacilities.equalsIgnoreCase("yes")) {
                    if (cateringRadio.isDisplayed()) {
                        cateringRadio.click();
                    }
                }
                break;

            case "PestControl":
                if (addFacilities.equalsIgnoreCase("yes")) {
                    if (pestControlRadio.isDisplayed()) {
                        pestControlRadio.click();
                    }
                }
                break;
            case "Other":
                if (addFacilities.equalsIgnoreCase("yes")) {
                    if (OtherRadio.isDisplayed()) {
                        OtherRadio.click();
                    }
                }
                break;
        }
        scenario.write("Buyer clicked on " + addFacilities + " radio button");
    }

    public void selectSector(String sector) {
        waitForSeconds(1);
        switch (sector.toUpperCase()) {
            case "CentralGovernment":
                if (sector.equalsIgnoreCase("yes")) {
                    if (centGovtRadio.isDisplayed()) {
                        centGovtRadio.click();
                    }
                }
                break;

            case "LocalGovernment":
                if (sector.equalsIgnoreCase("yes")) {
                    if (locGovtRadio.isDisplayed()) {
                        locGovtRadio.click();
                    }
                }
                break;

            case "MinistryOfDefence":
                if (sector.equalsIgnoreCase("yes")) {
                    if (miniOfDefenceRadio.isDisplayed()) {
                        miniOfDefenceRadio.click();
                    }
                }
                break;

            case "Devolved":
                if (sector.equalsIgnoreCase("yes")) {
                    if (devolvedRadio.isDisplayed()) {
                        devolvedRadio.click();
                    }
                }
                break;

            case "Education":
                if (sector.equalsIgnoreCase("yes")) {
                    if (educationRadio.isDisplayed()) {
                        educationRadio.click();
                    }
                }
                break;

            case "Health":
                if (sector.equalsIgnoreCase("yes")) {
                    if (healthRadio.isDisplayed()) {
                        healthRadio.click();
                    }
                }
                break;

            case "BlueLight":
                if (sector.equalsIgnoreCase("yes")) {
                    if (blueLightRadio.isDisplayed()) {
                        blueLightRadio.click();
                    }
                }
                break;

            case "Housing":
                if (sector.equalsIgnoreCase("yes")) {
                    if (housingRadio.isDisplayed()) {
                        housingRadio.click();
                    }
                }
                break;

            case "Charities":
                if (sector.equalsIgnoreCase("yes")) {
                    if (charitiesRadio.isDisplayed()) {
                        charitiesRadio.click();
                    }
                }
                break;
        }

        scenario.write("Buyer clicked on " + sector + " radio button");
    }

    public void selectServiceLocation(String location) {
        waitForSeconds(1);
        switch (location.toUpperCase()) {
            case "EnglandWales":
                if (location.equalsIgnoreCase("yes")) {
                    if (engWalesRadio.isDisplayed()) {
                        engWalesRadio.click();
                    }
                }
                break;

            case "Scotland":
                if (location.equalsIgnoreCase("yes")) {
                    if (scotlandRadio.isDisplayed()) {
                        scotlandRadio.click();
                    }
                }
                break;

            case "NorthernIreland":
                if (location.equalsIgnoreCase("yes")) {
                    if (northIrelandRadio.isDisplayed()) {
                        northIrelandRadio.click();
                    }
                }
                break;
        }
        scenario.write("Buyer clicked on " + location + " radio button");

    }

    public void checkboxOptions(String sector) {
        waitForSeconds(2);
        String[] sectors = sector.split("_");
        for (int i = 0; i < sectors.length - 1; i++) {
            clickCheckbox(sectors[i]);
        }

    }


    public void selectServiceAreaCheckbox(String serviceAreaCheckbox) {
        waitForSeconds(1);
        switch (serviceAreaCheckbox.toUpperCase()) {
            case "InformationAssured":
                if (serviceAreaCheckbox.equalsIgnoreCase("yes")) {
                    if (inforAssuredCheckbox.isDisplayed()) {
                        inforAssuredCheckbox.click();
                    }
                }
                break;

            case "Software":
                if (serviceAreaCheckbox.equalsIgnoreCase("yes")) {
                    if (softwareCheckbox.isDisplayed()) {
                        softwareCheckbox.click();
                    }
                }
                break;

            case "Hardware":
                if (serviceAreaCheckbox.equalsIgnoreCase("yes")) {
                    if (hardwareCheckbox.isDisplayed()) {
                        hardwareCheckbox.click();
                    }
                }
                break;

            case "HardwareSoftware":
                if (serviceAreaCheckbox.equalsIgnoreCase("yes")) {
                    if (hardwareSoftwareCheckbox.isDisplayed()) {
                        hardwareSoftwareCheckbox.click();
                    }
                }
                break;

            case "AudioVisual":
                if (serviceAreaCheckbox.equalsIgnoreCase("yes")) {
                    if (audioVisualCheckbox.isDisplayed()) {
                        audioVisualCheckbox.click();
                    }
                }
                break;
            case "Delivery":
                if (serviceAreaCheckbox.equalsIgnoreCase("yes")) {
                    if (deliveryCheckbox.isDisplayed()) {
                        deliveryCheckbox.click();
                    }
                }
                break;

            case "ExtendedWarranty":
                if (serviceAreaCheckbox.equalsIgnoreCase("yes")) {
                    if (extendedWarrantCheckbox.isDisplayed()) {
                        extendedWarrantCheckbox.click();
                    }
                }
                break;

            case "AssetTagging":
                if (serviceAreaCheckbox.equalsIgnoreCase("yes")) {
                    if (assetTaggingCheckbox.isDisplayed()) {
                        assetTaggingCheckbox.click();
                    }
                }
                break;

            case "Training":
                if (serviceAreaCheckbox.equalsIgnoreCase("yes")) {
                    if (trainingCheckbox.isDisplayed()) {
                        trainingCheckbox.click();
                    }
                }
                break;

            case "Installation":
                if (serviceAreaCheckbox.equalsIgnoreCase("yes")) {
                    if (installationCheckbox.isDisplayed()) {
                        installationCheckbox.click();
                    }
                }
                break;

            case "Imaging":
                if (serviceAreaCheckbox.equalsIgnoreCase("yes")) {
                    if (imagingCheckbox.isDisplayed()) {
                        imagingCheckbox.click();
                    }
                }
                break;

            case "Configuration":
                if (serviceAreaCheckbox.equalsIgnoreCase("yes")) {
                    if (configurationCheckbox.isDisplayed()) {
                        configurationCheckbox.click();
                    }
                }
                break;

            case "NetworkTest":
                if (serviceAreaCheckbox.equalsIgnoreCase("yes")) {
                    if (networkTestCheckbox.isDisplayed()) {
                        networkTestCheckbox.click();
                    }
                }
                break;

            case "PreDeliveryImpact":
                if (serviceAreaCheckbox.equalsIgnoreCase("yes")) {
                    if (preDelInspectionCheckbox.isDisplayed()) {
                        preDelInspectionCheckbox.click();
                    }
                }
                break;
            case "Storage":
                if (serviceAreaCheckbox.equalsIgnoreCase("yes")) {
                    if (storageCheckbox.isDisplayed()) {
                        storageCheckbox.click();
                    }
                }
                break;


            case "Disposal":
                if (serviceAreaCheckbox.equalsIgnoreCase("yes")) {
                    if (disposalCheckbox.isDisplayed()) {
                        disposalCheckbox.click();
                    }
                }
                break;
        }
        scenario.write("Buyer clicked on " + serviceAreaCheckbox + " Checkbox");
    }

    public String getQuestionPageContent() {
        return questionPageContent.getText();
    }

    public void checkQuestionContent(String expectedQuestionContent) {
        Assert.assertEquals("The expected question elements are not the same with the actual", expectedQuestionContent, getQuestionPageContent());
    }

    public String getErrorHandlingContent() {
        return errorHandling.getText();
    }

    public String getErrorSummaryContent() {
        return errorSummaryContainer.getText();
    }

    public String getErrorSummaryTitle() {
        return errorSummaryTitle.getText();
    }

    public void checkErrorHandlingContent(String expectedErrorHandlingContent, String expectedErrorSummaryContent) {
        Assert.assertTrue("The error handling message is not displayed in the UI", errorHandling.isDisplayed());
        Assert.assertTrue("The error summary message is not displayed in the UI", errorSummaryContainer.isDisplayed());
        Assert.assertTrue("The error summary title is not displayed in the UI", errorSummaryTitle.isDisplayed());
        Assert.assertEquals("The expected error handling content is not the same with the actual", expectedErrorHandlingContent, getErrorHandlingContent());
        Assert.assertEquals("The expected error summary content is not the same with the actual", expectedErrorSummaryContent, getErrorSummaryContent());
        Assert.assertEquals("The expected error title content is not the same with the actual", "There is a problem", getErrorSummaryTitle());
        checkTheFocusAfterClickingErrorSummary();
    }

    public void clickOnTheBackCTA() {
        waitForSeconds(3);

        // TODO: code cleanup - common javascript methods needs to be implemented
        JavascriptExecutor executor = (JavascriptExecutor) driver;
        executor.executeScript("arguments[0].scrollIntoView();", backCTA);
        executor.executeScript("arguments[0].click();", backCTA);
    }

    public void checkTheFocusAfterClickingErrorSummary() {
        JavascriptExecutor executor = (JavascriptExecutor) driver;
        executor.executeScript("arguments[0].scrollIntoView();", errorSummaryLink);
        executor.executeScript("arguments[0].click();", errorSummaryLink);

        WebElement focused = driver.switchTo().activeElement();
        executor.executeScript("arguments[0].click();", focused);
        Assert.assertTrue("The element is not in focus", firstSelectableElement.isSelected());
        executor.executeScript("arguments[0].click();", focused);
    }

    public String getErrorMessage() {
        return getText(errorMsg);
    }

    public List<WebElement> getHeaderText() {
        return headerThree;
    }

    public void clickSearchAgreementResult() {
        clickElement(searchAgreementResultLink);
    }

    public void assertPPGComponents() {
        ppgComponents.isDisplayed();
    }

    public void assertPrimaryMenuList() {
        String[] expectedPrimaryMenu = {"Search agreements", "Search suppliers", "Upcoming agreements", "Products and Services", "Sectors"};
        List<WebElement> allOptions = driver.findElements(By.xpath("//ul[2]/li"));

        // make sure you found the right number of elements
        if (expectedPrimaryMenu.length != allOptions.size()) {
            System.out.println("fail, wrong number of elements found");
        }
        // make sure that the value of every <option> element equals the expected value
        for (int i = 0; i < expectedPrimaryMenu.length; i++) {
            String optionValue = allOptions.get(i).getText();
            if (optionValue.equals(expectedPrimaryMenu[i])) {
                System.out.println("passed on: " + optionValue);
            } else {
                System.out.println("failed on: " + optionValue);
            }
        }
    }

    public void assertSecondaryMenuList() {
        String[] expectedSecondaryMenu = {"Social value", "About", "Contact", "Events", "News", "Information for buyers and suppliers", "call us: 0345 410 2222"};
        List<WebElement> allOptions = driver.findElements(By.xpath("//div[3]/nav/ul[1]/li"));

        // make sure you found the right number of elements
        if (expectedSecondaryMenu.length != allOptions.size()) {
            System.out.println("fail, wrong number of elements found");
        }
        // make sure that the value of every <option> element equals the expected value
        for (int i = 0; i < expectedSecondaryMenu.length; i++) {
            String optionValue = allOptions.get(i).getText();
            if (optionValue.equals(expectedSecondaryMenu[i])) {
                System.out.println("passed on: " + optionValue);
            } else {
                System.out.println("failed on: " + optionValue);
            }
        }
    }

    public void assertSearchComponents() {
        searchComponents.isDisplayed();
    }

    public void verifyHomePageCards() {
        int cardCount = driver.findElements(By.xpath("//*[@class='homepage-card-wrapper']/div")).size();
        Assert.assertEquals(3, cardCount);

    }

    public void verifyLatestNews() {
        int newsCount = driver.findElements(By.xpath("//*[@class='featured-news news-listing homepage-news-listing']/li")).size();
        Assert.assertEquals(2, newsCount);

    }

    public void assertCampaignBoxComponents() {
        campaignBoxComponents.isDisplayed();
    }

    public void assertGlossaryComponents() {
        homepageGlossaryComponents.isDisplayed();
    }

    public void informationforBuyerAndSupplierComponent() {
        informationforBuyerAndSupplierComponent.isDisplayed();
        waitForSeconds(2);
        String expectedInformationforBuyerAndSupplierHeading = informationForBuyerAndSupplierHeading.getText();
        Assert.assertEquals(expectedInformationforBuyerAndSupplierHeading, "Information for buyers and suppliers");

    }

    public void glossaryComponents() {
        glossaryComponents.isDisplayed();
        String expectedGlossaryHeading = glossaryHeading.getText();
        Assert.assertEquals(expectedGlossaryHeading, "Glossary");
    }


    public void clickonBackToTop() {
        waitForSeconds(5);
        JavascriptExecutor js = (JavascriptExecutor) driver;
        js.executeScript("window.scrollBy(0,250)", "");
        btnBackToTop.click();
    }

    public void assertTopOfThePage() {
        waitForSeconds(5);
        JavascriptExecutor executor = (JavascriptExecutor) driver;
        Long value = (Long) executor.executeScript("return window.pageYOffset;");
    }

    public void clickonBrowseAllNewsArticlesLink() {
        linkBrowseAllNewsArticles.click();
    }

    public void assertNewspage() {
        waitForSeconds(3);
        String URL = driver.getCurrentUrl();
        Assert.assertEquals(URL, "https://webuat.crowncommercial.gov.uk/news/?&page=1");
    }

    public void clickOnFooterLinks(String BuyAndSupply) {
        switch (BuyAndSupply) {
            case "Contracts finder":
                if (ContractsFinder.isDisplayed()) {
                    ContractsFinder.click();
                    String URLCF = driver.getCurrentUrl();
                    Assert.assertEquals(URLCF, "https://www.gov.uk/contracts-finder");
                }
                break;
            case "Sign in to purchasing platform":
                if (SignInToPurchasingplatform.isDisplayed()) {
                    SignInToPurchasingplatform.click();
                    String URLPP = driver.getCurrentUrl();
                    Assert.assertEquals(URLPP, "https://purchasingplatform.crowncommercial.gov.uk/mp-welcome");
                }
                break;
            case "Sign in to digital marketplace":
                if (SignInToDigitalMarketplace.isDisplayed()) {
                    SignInToDigitalMarketplace.click();
                    String URLDMP = driver.getCurrentUrl();
                    Assert.assertEquals(URLDMP, "https://www.applytosupply.digitalmarketplace.service.gov.uk/user/login");
                }
                break;
            case "Sign in to fleet portal":
                if (SignInToFleetPortal.isDisplayed()) {
                    SignInToFleetPortal.click();
                    String URLFP = driver.getCurrentUrl();
                    Assert.assertEquals(URLFP, "https://fleetportal.crowncommercial.gov.uk/login.mth");
                }
                break;

        }
    }

    public void clickOnContacts() {
        menuContact.click();
        waitForSeconds(3);
        String expectedHeading = headingText.getText();
        Assert.assertEquals(expectedHeading, "Contact CCS");
    }

    public void clickOnAbout() {
        menuAbout.click();
        waitForSeconds(3);
        String expectedHeading = headingText.getText();
        Assert.assertEquals(expectedHeading, "About Crown Commercial Service (CCS)");
    }

    public void clickOnEvents() {
        menuEvents.click();
        waitForSeconds(3);
        String expectedHeading = headingText.getText();
        Assert.assertEquals(expectedHeading, "Events");
    }

    public void clickOnNews() {
        menuNews.click();
    }

    public void clickOnSearchSuppliers() {
        menuSearchSuppliers.click();
        waitForSeconds(3);
        String expectedHeading = headingText.getText();
        Assert.assertEquals(expectedHeading, "Search suppliers");
    }

    public void clickOnProductAndServices() {
        menuProductAndServices.click();
        waitForSeconds(3);
        String expectedHeading = headingText.getText();
        Assert.assertEquals(expectedHeading, "Products and Servicess");
    }

    public void fillContactForm() {
        fldName.sendKeys("WebsiteAutomationUser");
        fldEmail.sendKeys("WebsiteAutomation@hotmail.com");
        if (fldJobTitle.isDisplayed()) {
            fldJobTitle.sendKeys("AutomationAccount");
        } else {

        }

        fldCompany.sendKeys("WebsiteAutomation");
        fldComment.sendKeys("This is a QA Automation comment");
        waitForSeconds(3);
        btnSubmit.click();

    }

    public void assertSuccessMessage() {
        waitForSeconds(3);
        String successMessage = lblSuccessMessage.getText();
        Assert.assertEquals(successMessage, "Your message has been sent");

    }

    public void assertHelpfulLinksComponent() {
        HelpfulLinksComponent.isDisplayed();
        waitForSeconds(2);
        String expectedHelpfulLinkHeading = helpfulLinkHeading.getText();
        Assert.assertEquals(expectedHelpfulLinkHeading, "Helpful Links");

    }

    public void agreementPricingComponent() {
        agreementPricingComponent.isDisplayed();
        waitForSeconds(3);
        String expectedAgreementPricingHeading = agreementPricingHeading.getText();
        Assert.assertEquals(expectedAgreementPricingHeading, "Do you need help requesting agreement pricing?");
    }


    public void TalkToUsComponent() {
        TalkToUsComponent.isDisplayed();
        waitForSeconds(3);
        String expectedTalkToUsHeading = talkToUsHeading.getText();
        Assert.assertEquals(expectedTalkToUsHeading, "Talk to us");

    }

    public void clickOnSearchAgreement() {
        menuSearchAgreement.click();
        waitForSeconds(3);
        String expectedHeading = headingText.getText();
        Assert.assertEquals(expectedHeading, "Search agreements");

    }

    public void clickOnUpcomingAgreement() {
        menuUpcomingAgreement.click();
        waitForSeconds(3);
        String expectedHeading = headingText.getText();
        Assert.assertEquals(expectedHeading, "Upcoming agreements");

    }


    public void VerifyLiveFilterIsDefaulted() {
        chkBoxLive.isSelected();
        String expectedFilterSummary = filterSummary.getText();
        Assert.assertEquals(expectedFilterSummary, "Live");
    }

    public void VerifyViewAllFilterIsDefaulted() {
        chkBoxViewALL.isSelected();
    }

    public void selectExpiredOption() {
        chkBoxExpired.click();

    }

    public void contactUsComponent() {
        contactUsComponent.isDisplayed();
        waitForSeconds(2);
        String expectedContactHeading = contactHeading.getText();
        Assert.assertEquals(expectedContactHeading, "Contact");

    }

    public void downloadPieplineReportComponent() {
        downloadPieplineReportComponent.isDisplayed();
        waitForSeconds(2);
        String expectedReportHeading = reportHeading.getText();
        Assert.assertEquals(expectedReportHeading, "Download Pipeline report");
    }


    public void UpcomingAgreementComponent() {
        upcomingAgreementComponent.isDisplayed();
        waitForSeconds(3);
        String expectedUpcomingAgreementHeading = upcomingAgreementHeading.getText();
        Assert.assertEquals(expectedUpcomingAgreementHeading, "Upcoming agreements");

    }

    public void verifyFilterSummary() {
        chkBoxLive.isSelected();
        String expectedFilterSummary = filterSummary.getText();
        Assert.assertEquals(expectedFilterSummary, "Live\nand\nExpired");
    }


}
