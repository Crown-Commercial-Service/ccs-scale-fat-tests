package com.scale.context;

import com.scale.framework.utility.ConfigurationReader;
import com.scale.framework.utility.Log;
import com.scale.framework.utility.PageObjectManager;
import cucumber.api.Scenario;
import cucumber.api.java.After;
import org.apache.log4j.Logger;


public class Hooks {

    private PageObjectManager objectManager;
    private Logger log = Log.getLogger(Hooks.class);
    private ConfigurationReader configurationReader;
    TestContext testContext;


    public Hooks(TestContext testContextObj) {
        configurationReader = new ConfigurationReader();
        testContext = testContextObj;
        objectManager = testContext.getObjectManager();
    }

    @After
    public void tearDown(Scenario scenario) {
        objectManager.getActions().takeSnapShot(scenario);
        objectManager.getActions().quitDriver();
    }

}
