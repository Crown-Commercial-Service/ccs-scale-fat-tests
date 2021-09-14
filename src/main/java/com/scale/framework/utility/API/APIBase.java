package com.scale.framework.utility.API;

import com.scale.framework.utility.ConfigurationReader;
import com.scale.framework.utility.Log;
import io.restassured.builder.RequestSpecBuilder;
import io.restassured.http.ContentType;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.apache.log4j.Logger;
import java.util.ArrayList;

import static io.restassured.RestAssured.given;


public class APIBase extends ConfigurationReader {
    public Response response;
    ConfigurationReader configReader = new ConfigurationReader();
    private Logger log = Log.getLogger(APIBase.class);


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
}