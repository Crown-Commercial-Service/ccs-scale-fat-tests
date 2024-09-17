package com.scale.TestRunner;

import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;
import cucumber.api.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = {"src/test/resources/FeatureFiles"},
        glue={"com.scale.stepdefs", "com.scale.context"},
        monochrome = true,
        plugin = {"pretty","com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:"},
        tags = "@ProductAndService")

public class TestRunner {
}
 
