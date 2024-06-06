package com.scale.framework.utility.API;

import com.scale.framework.utility.ConfigurationReader;
import io.restassured.RestAssured;
import io.restassured.builder.RequestSpecBuilder;
import io.restassured.http.ContentType;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import java.util.ArrayList;

import static io.restassured.RestAssured.given;

public class APIBase extends ConfigurationReader {
    public Response response;
    ConfigurationReader configReader = new ConfigurationReader();
    private Logger log = LogManager.getLogger(APIBase.class);


    private RequestSpecification setBaseURI(){
        RequestSpecification requestspec = new RequestSpecBuilder().setBaseUri(configReader.get("APIBASEURL")).build();
        return requestspec;
    }

    public Response getRequest(String URL) {
        response=null;
        response = given().spec(setBaseURI()).contentType(ContentType.JSON).get(URL);
        return response;
    }

    public Integer getStatusCode(){
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





}