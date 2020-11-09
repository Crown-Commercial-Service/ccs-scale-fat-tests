package com.scale.TestRunner;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = {"src/test/resources/FeatureFiles"},
        glue={"com.scale.stepdefs", "com.scale.context"},
        monochrome = true,
       // plugin = { "pretty", "html:target/cucumber-html-reports", "json:target/cucumber.json"},
       // plugin = {"com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:"},
        tags = "@regTests or @Prod or @QnErrTests or @fm2-housing or @fm2-security-sw " +
                "or @fm2-tech-security or @legal or @linen or @techEdu or @errhandling @test123",
        dryRun = false
)
public class TestRunner {
}
 
