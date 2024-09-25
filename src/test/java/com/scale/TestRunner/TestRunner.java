package com.scale.TestRunner;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;


@RunWith(Cucumber.class)
@CucumberOptions(
        features = {"src/test/resources/FeatureFiles"},
        glue="com.scale",
        monochrome = true,
        plugin = {"pretty","com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:"},
        tags = "@RegressionTest")

public class TestRunner {
}
 
