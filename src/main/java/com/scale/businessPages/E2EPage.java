package com.scale.businessPages;

import com.scale.framework.utility.Actions;
import com.scale.framework.utility.ConfigurationReader;
import com.scale.framework.utility.Log;
import cucumber.api.Scenario;
import org.apache.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.util.List;

import static org.junit.Assert.assertEquals;

public class E2EPage extends Actions {
    private WebDriver driver;
    private ConfigurationReader configReaderObj;
    private Logger log = Log.getLogger(HomePage.class);


    @FindBy(id = "main-content")
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

    @FindBy(xpath = "//h3")
    private List<WebElement> headerThree;

    @FindBy(xpath = "//h3//a")
    private WebElement searchAgreementResultLink;

    public E2EPage(WebDriver driver, Scenario scenario) {
        this.driver = driver;
        this.scenario = scenario;
        PageFactory.initElements(driver, this);
        this.wait = new WebDriverWait(this.driver, 30);
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
            if (budRadioYes.isDisplayed())
                budRadioYes.click();
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
            if (contRadioYes.isDisplayed())
                contRadioYes.click();
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

    public void selectSector(String sector){
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

    public void selectServiceLocation(String location){
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


    public void selectServiceAreaCheckbox(String serviceAreaCheckbox){
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

    public String getErrorSummaryContent() { return errorSummaryContainer.getText(); }

    public String getErrorSummaryTitle() { return errorSummaryTitle.getText(); }

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
        JavascriptExecutor executor = (JavascriptExecutor)driver;
        executor.executeScript("arguments[0].scrollIntoView();", backCTA);
        executor.executeScript("arguments[0].click();", backCTA);
    }

    public void checkTheFocusAfterClickingErrorSummary() {
        JavascriptExecutor executor = (JavascriptExecutor)driver;
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

    public List<WebElement> getHeaderText(){
        return headerThree;
    }

    public void clickSearchAgreementResult() {
        clickElement(searchAgreementResultLink);
    }

}
