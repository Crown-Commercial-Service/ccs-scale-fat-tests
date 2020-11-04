package com.scale.TestRunner;

import com.scale.context.*;
import org.json.simple.parser.ParseException;
import org.junit.AfterClass;
import org.junit.runner.RunWith;
import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import java.io.IOException;

@RunWith(Cucumber.class)
@CucumberOptions(
        strict = false,
        features = {"src/test/resources/FeatureFiles"},
        glue={"com.scale.stepdefs", "com.scale.context"},
        monochrome = true,
        plugin = { "pretty", "html:target/cucumber-html-reports", "json:target/cucumber-html-reports/cucumber.json"},

        tags = "@regTests"
//                "@IntLinenTest,@IntLegalTest,@IntTechEduTest,@FM2HousingIntTest"
)


// dryRun = false




public class TestRunner {
}
 
