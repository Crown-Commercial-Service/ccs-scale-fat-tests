package com.scale.framework.utility.API;

import com.scale.framework.utility.ConfigurationReader;
import io.restassured.RestAssured;
import io.restassured.builder.RequestSpecBuilder;
import io.restassured.http.ContentType;
import io.restassured.path.json.JsonPath;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.json.JSONException;
import org.json.JSONObject;
import org.junit.Assert;

import java.util.ArrayList;

import static io.restassured.RestAssured.given;

public class APIBase extends ConfigurationReader {
    public Response response;
    ConfigurationReader configReader = new ConfigurationReader();
    private Logger log = LogManager.getLogger(APIBase.class);


    private RequestSpecification setBaseURI() {
        RequestSpecification requestspec = new RequestSpecBuilder().setBaseUri(configReader.get("APIBASEURL")).build();
        return requestspec;
    }

    public Response getRequest(String URL) {
        response = null;
        response = given().spec(setBaseURI()).contentType(ContentType.JSON).get(URL);
        return response;
    }

    public Integer getStatusCode() {
        int statusCode = response.statusCode();
        return statusCode;
    }

    public int getTotalResults() {
        int size = response.getBody().jsonPath().get("meta.total_results");
        log.info("The total number returned is" + size);
        return size;
    }

    public ArrayList<String> getAgreementName() {
        ArrayList<String> countries = response.getBody().path("results.title");
        return countries;
    }

    public void getAgreements() {
        RestAssured.baseURI = configReader.get("getAgreementsURI");
        RequestSpecification httpRequest = RestAssured.given();
        httpRequest.header("Content-Type", "application/json");
        httpRequest.header("x-api-key", "cQ23aZ7NWv9JjmbenMEgT8L5Ko7xPmO42ftlX9rw");
        Response response = httpRequest.get();
        String body = response.getBody().asString();
        System.out.println(body);
        Assert.assertNotNull(response);
        int statusCode = response.getStatusCode();
        Assert.assertEquals(statusCode, 200);


    }

    public void getAgreement() {
        RestAssured.baseURI = configReader.get("getAgreementURI");
        RequestSpecification httpRequest = RestAssured.given();
        httpRequest.header("Content-Type", "application/json");
        httpRequest.header("x-api-key", "cQ23aZ7NWv9JjmbenMEgT8L5Ko7xPmO42ftlX9rw");
        Response response = httpRequest.get();
        String body = response.getBody().asString();
        System.out.println(body);
        Assert.assertNotNull(response);
        int statusCode = response.getStatusCode();
        Assert.assertEquals(statusCode, 200);

    }

    public void getAgreementDocuments() {
        RestAssured.baseURI = configReader.get("getAgreementDocumentsURI");
        RequestSpecification httpRequest = RestAssured.given();
        httpRequest.header("Content-Type", "application/json");
        httpRequest.header("x-api-key", "cQ23aZ7NWv9JjmbenMEgT8L5Ko7xPmO42ftlX9rw");
        Response response = httpRequest.get();
        String body = response.getBody().asString();
        System.out.println(body);
        Assert.assertNotNull(response);
        int statusCode = response.getStatusCode();
        Assert.assertEquals(statusCode, 200);

    }

    public void getAgreementUpdates() {
        RestAssured.baseURI = configReader.get("getAgreementUpdatesURI");
        RequestSpecification httpRequest = RestAssured.given();
        httpRequest.header("Content-Type", "application/json");
        httpRequest.header("x-api-key", "cQ23aZ7NWv9JjmbenMEgT8L5Ko7xPmO42ftlX9rw");
        Response response = httpRequest.get();
        String body = response.getBody().asString();
        System.out.println(body);
        Assert.assertNotNull(response);
        int statusCode = response.getStatusCode();
        Assert.assertEquals(statusCode, 200);

    }

    public void getAgreementLots() {
        RestAssured.baseURI = configReader.get("getAgreementLotsURI");
        RequestSpecification httpRequest = RestAssured.given();
        httpRequest.header("Content-Type", "application/json");
        httpRequest.header("x-api-key", "cQ23aZ7NWv9JjmbenMEgT8L5Ko7xPmO42ftlX9rw");
        Response response = httpRequest.get();
        String body = response.getBody().asString();
        System.out.println(body);
        Assert.assertNotNull(response);
        int statusCode = response.getStatusCode();
        Assert.assertEquals(statusCode, 200);

    }

    public void getAgreementLot() {
        RestAssured.baseURI = configReader.get("getAgreementLotURI");
        RequestSpecification httpRequest = RestAssured.given();
        httpRequest.header("Content-Type", "application/json");
        httpRequest.header("x-api-key", "cQ23aZ7NWv9JjmbenMEgT8L5Ko7xPmO42ftlX9rw");
        Response response = httpRequest.get();
        String body = response.getBody().asString();
        System.out.println(body);
        Assert.assertNotNull(response);
        int statusCode = response.getStatusCode();
        Assert.assertEquals(statusCode, 200);

    }

    public void getAgreementLotSupplier() {
        RestAssured.baseURI = configReader.get("getAgreementLotSupplierURI");
        RequestSpecification httpRequest = RestAssured.given();
        httpRequest.header("Content-Type", "application/json");
        httpRequest.header("x-api-key", "cQ23aZ7NWv9JjmbenMEgT8L5Ko7xPmO42ftlX9rw");
        Response response = httpRequest.get();
        String body = response.getBody().asString();
        System.out.println(body);
        Assert.assertNotNull(response);
        int statusCode = response.getStatusCode();
        Assert.assertEquals(statusCode, 200);

    }

    public void getAgreementLotEventTypes() {
        RestAssured.baseURI = configReader.get("getAgreementLotEventTypesURI");
        RequestSpecification httpRequest = RestAssured.given();
        httpRequest.header("Content-Type", "application/json");
        httpRequest.header("x-api-key", "cQ23aZ7NWv9JjmbenMEgT8L5Ko7xPmO42ftlX9rw");
        Response response = httpRequest.get();
        String body = response.getBody().asString();
        System.out.println(body);
        Assert.assertNotNull(response);
        int statusCode = response.getStatusCode();
        Assert.assertEquals(statusCode, 200);

    }

    public void getAgreementLotDataTemplates() {
        RestAssured.baseURI = configReader.get("getAgreementLotDataTemplatesURI");
        RequestSpecification httpRequest = RestAssured.given();
        httpRequest.header("Content-Type", "application/json");
        httpRequest.header("x-api-key", "cQ23aZ7NWv9JjmbenMEgT8L5Ko7xPmO42ftlX9rw");
        Response response = httpRequest.get();
        String body = response.getBody().asString();
        System.out.println(body);
        Assert.assertNotNull(response);
        int statusCode = response.getStatusCode();
        Assert.assertEquals(statusCode, 200);

    }

    public void getAgreementLotDocumentTemplates() {
        RestAssured.baseURI = configReader.get("getAgreementLotDocumentTemplatesURI");
        RequestSpecification httpRequest = RestAssured.given();
        httpRequest.header("Content-Type", "application/json");
        httpRequest.header("x-api-key", "cQ23aZ7NWv9JjmbenMEgT8L5Ko7xPmO42ftlX9rw");
        Response response = httpRequest.get();
        String body = response.getBody().asString();
        System.out.println(body);
        Assert.assertNotNull(response);
        int statusCode = response.getStatusCode();
        Assert.assertEquals(statusCode, 200);

    }

    public String getOAUTH2Grant() throws JSONException {
        Response response =
                given().auth().preemptive().basic("5v32gkqqgd8t5q0uum6kkikumt", "6kogka31c50452jg3d5enago9vupkse74qeogfot1t4796l4e7l")
                        .contentType("application/x-www-form-urlencoded")
                        .formParam("grant_type", "client_credentials")
                        .formParam("scope", "")
                        .when()
                        .post("https://agreements-service.auth.eu-west-2.amazoncognito.com/oauth2/token");

        JSONObject jsonObject = new JSONObject(response.getBody().asString());
        String accessToken = jsonObject.get("access_token").toString();
        String tokenType = jsonObject.get("token_type").toString();
        log.info("Oauth Token with type " + tokenType + "   " + accessToken);
        return accessToken;
    }

    public void putAgreement() {
        RestAssured.baseURI = configReader.get("putAgreementURI");
        RequestSpecification httpRequest = RestAssured.given().auth().oauth2(getOAUTH2Grant());
        httpRequest.header("Content-Type", "application/json");
        httpRequest.header("x-api-key", "cQ23aZ7NWv9JjmbenMEgT8L5Ko7xPmO42ftlX9rw");
        String payload = "{" +
                "   \"name\":\"QA:This is a TEST Agreement\",\n" +
                "   \"description\":\"Description:This is a TEST Agreement\",\n" +
                "   \"startDate\":\"2020-01-01\",\n" +
                "   \"endDate\":\"2025-01-01\",\n" +
                "   \"detailUrl\":\"https://www.crowncommercial.gov.uk/agreements/RM3005.24\",\n" +
                "   \"preDefinedLotRequired\":true ,\n" +
                "   \"benefits\":[\n" +
                "    \"striFacilisis mauris sit amet massa vitae tortor. Nisi est sit amet facilisis magna etiam tempor. Blandit massa enim nec dui nunc mattis enim ut tellusng\"\n" +
                "  ],\n" +
                "   \"ownerName\":\"CCS\"" +
                "}";
        Response response = httpRequest.body(payload).put();
        String body = response.asString();
        System.out.println(body);
        Assert.assertNotNull(body);
        int statusCode = response.getStatusCode();
        Assert.assertEquals(statusCode, 200);

    }

    public void putLot() {
        RestAssured.baseURI = configReader.get("putLotURI");
        RequestSpecification httpRequest = RestAssured.given().auth().oauth2(getOAUTH2Grant());
        httpRequest.header("Content-Type", "application/json");
        httpRequest.header("x-api-key", "cQ23aZ7NWv9JjmbenMEgT8L5Ko7xPmO42ftlX9rw");
        String payload = "{" +
                "   \"number\":\"9\",\n" +
                "   \"name\":\"QA: Test lot\",\n" +
                "   \"description\":\"<p>This sub-lot provides a range of services for secure storage and fulfilment in international locations. Services include but are not limited to:<ul class=\\\"\\\"govuk-list govuk-list--bullet\\\"\\\">\\r\\n    <li>inbound warehousing processes<\\/li>\\r\\n    <li>warehouse storage<\\/li>\\r\\n    <li>fulfilment services, order consolidation, merge in transit<\\/li>\\r\\n    <li>packaging and goods\\/material handling equipment<\\/li>\\r\\n    <li>stock control<\\/li>\\r\\n    <li>inventory and asset management systems (including asset traceability)<\\/li>\\r\\n    <\\/ul><\\/p>\",\n" +
                "   \"startDate\":\"2022-01-01\",\n" +
                "   \"endDate\":\"2026-01-01\",\n" +
                "   \"type\":\"product\"" +
                "}";
        Response response = httpRequest.body(payload).put();
        JsonPath jsonBody = new JsonPath(response.asString());
        String body = response.getBody().asString();
        System.out.println(body);
        Assert.assertNotNull(response);
        int statusCode = response.getStatusCode();
        Assert.assertEquals(statusCode, 200);

    }

    public void putLots() {
        RestAssured.baseURI = configReader.get("putLotsURI");
        RequestSpecification httpRequest = RestAssured.given().auth().oauth2(getOAUTH2Grant());
        httpRequest.header("Content-Type", "application/json");
        httpRequest.header("x-api-key", "cQ23aZ7NWv9JjmbenMEgT8L5Ko7xPmO42ftlX9rw");
        String payload = "[" + "{" +
                "   \"number\":\"1a\",\n" +
                "   \"name\":\"International Storage\",\n" +
                "   \"description\":\"Id faucibus nisl tincidunt eget nullam non. A condimentum vitae sapien pellentesque habitant\",\n" +
                "   \"startDate\":\"2022-01-01\",\n" +
                "   \"endDate\":\"2026-01-01\",\n" +
                "   \"type\":\"product\"\n" +
                "}, \n" +
                "{" +
                "   \"number\":\"1b\",\n" +
                "   \"name\":\"Road Freight Services\",\n" +
                "   \"description\":\"Volutpat lacus laoreet non curabitur gravida arcu. Vel elit scelerisque mauris pellentesque pulvinar pellentesque\",\n" +
                "   \"startDate\":\"2022-01-01\",\n" +
                "   \"endDate\":\"2026-01-01\",\n" +
                "   \"type\":\"service\"\n" +
                "},\n" +
                "{" +
                "   \"number\":\"1c\",\n" +
                "   \"name\":\"Quality Control\",\n" +
                "   \"description\":\"Imperdiet dui accumsan sit amet nulla facilisi. Posuere urna nec tincidunt praesent semper feugiat nibh\",\n" +
                "   \"startDate\":\"2022-01-01\",\n" +
                "   \"endDate\":\"2026-01-01\",\n" +
                "   \"type\":\"product\"\n" +
                "}\n" +
                "]";
        Response response = httpRequest.body(payload).put();
        JsonPath jsonBody = new JsonPath(response.asString());
        String body = response.getBody().asString();
        System.out.println(body);
        Assert.assertNotNull(response);
        int statusCode = response.getStatusCode();
        Assert.assertEquals(statusCode, 200);

    }

    public void putLotSupplier() {
        RestAssured.baseURI = configReader.get("putLotSupplierURI");
        RequestSpecification httpRequest = RestAssured.given().auth().oauth2(getOAUTH2Grant());
        httpRequest.header("Content-Type", "application/json");
        httpRequest.header("x-api-key", "cQ23aZ7NWv9JjmbenMEgT8L5Ko7xPmO42ftlX9rw");
        String payload = "[ \n" +
                "{ \n" +
                "   \"organization\":{\n" +
                "   \"identifier\":{\n" +
                "   \"scheme\":\"GB-NHS\",\n" +
                "   \"id\":\"X24\",\n" +
                "   \"legalName\":\"NHS ENGLAND\",\n" +
                "   \"uri\":\"https://directory.spineservices.nhs.uk/ORD/2-0-0/organisations/X24\"\n" +
                "},\n " +
                "   \"details\":{\n" +
                "   \"creationDate\": \"2022-10-31\",\n" +
                "   \"countryCode\":\"GB\",\n" +
                "   \"is_sme\": false,\n" +
                "   \"is_vcse\": false,\n" +
                "   \"active\": true \n" +
                    "} \n " +
                "},\n " +
                "\"supplierStatus\":\"active\",\n" +
                " \"lastUpdatedBy\":\"Saral Raj\"\n" +
                "} \n " +
                "]";
        System.out.println(payload);
        Response response = httpRequest.body(payload).put();
        JsonPath jsonBody = new JsonPath(response.asString());
        String body = response.getBody().asString();
        System.out.println(body);
        Assert.assertNotNull(response);
        int statusCode = response.getStatusCode();
        Assert.assertEquals(statusCode, 200);

    }

}