package com.scale.stepdefs;
import com.scale.utility.API.APIBase;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class CommonAPISteps {
    public APIBase apibase = new APIBase();
    @Given("I fire GET Agreements call and assert the status")
    public void iFireGETAgreementsCallAndAssertTheStatus() {
        apibase.getAgreements();
    }
    @When("I fire GET Agreement call and assert the status")
    public void iFireGETAgreementCallAndAssertTheStatus() {
        apibase.getAgreement();
    }
    @When("I fire GET Agreement documents call and assert the status")
    public void iFireGETAgreementDocumentsCallAndAssertTheStatus() {
        apibase.getAgreementDocuments();
    }
    @When("I fire GET Agreement updates call and assert the status")
    public void iFireGETAgreementUpdatesCallAndAssertTheStatus() {
        apibase.getAgreementUpdates();
    }
    @When("I fire GET Agreement lots call and assert the status")
    public void iFireGETAgreementLotsCallAndAssertTheStatus() {
        apibase.getAgreementLots();
    }
    @When("I fire GET Agreement lot call and assert the status")
    public void iFireGETAgreementLotCallAndAssertTheStatus() {
        apibase.getAgreementLot();
    }
    @When("I fire GET Agreement lot supplier call and assert the status")
    public void iFireGETAgreementLotSupplierCallAndAssertTheStatus() {
        apibase.getAgreementLotSupplier();
    }
    @When("I fire GET Agreement lot event types call and assert the status")
    public void iFireGETAgreementLotEventTypesCallAndAssertTheStatus() {
        apibase.getAgreementLotEventTypes();
    }

    @When("I fire GET Agreement lot data Templates call and assert the status")
    public void iFireGETAgreementLotDataTemplatesCallAndAssertTheStatus() {
        apibase.getAgreementLotDataTemplates();
    }
    @When("I fire GET Agreement lot documents Templates call and assert the status")
    public void iFireGETAgreementLotDocumentsTemplatesCallAndAssertTheStatus() {
        apibase.getAgreementLotDocumentTemplates();
    }
    @When("I fire PUT Agreement endpoint and assert the status")
    public void iFirePUTAgreementEndpointAndAssertTheStatus() {
        apibase.getOAUTH2Grant();
        apibase.putAgreement();
    }
    @When("I fire PUT Lot endpoint and assert the status")
    public void iFirePUTLotEndpointAndAssertTheStatus() {
        apibase.getOAUTH2Grant();
        apibase.putLot();
    }
    @When("I fire PUT Lots endpoint and assert the status")
    public void iFirePUTLotsEndpointAndAssertTheStatus() {
        apibase.getOAUTH2Grant();
        apibase.putLots();
    }
    @When("I fire PUT Lot supplier endpoint and assert the status")
    public void iFirePUTLotSupplierEndpointAndAssertTheStatus() {
        apibase.getOAUTH2Grant();
        apibase.putLotSupplier();
    }
    @When("I fire PUT Agreement endpoint and create {string}")
    public void iFirePUTAgreementEndpointAndCreate(String agreementNumber) {
        apibase.getOAUTH2Grant();
        apibase.putRequestedAgreement(agreementNumber);
    }
    @Then("assert {string} is created")
    public void assertIsCreated(String agreementNumber) {
        apibase.verifyGetAgreement(agreementNumber);
    }

}