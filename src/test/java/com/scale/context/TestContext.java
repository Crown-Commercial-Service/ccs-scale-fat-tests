package com.scale.context;


import com.assertthat.selenium_shutterbug.core.PageSnapshot;
import com.assertthat.selenium_shutterbug.core.Shutterbug;
import com.assertthat.selenium_shutterbug.utils.web.ScrollStrategy;
import com.scale.framework.utility.*;
import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;
import org.apache.log4j.Logger;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;

import javax.imageio.ImageIO;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.management.ManagementFactory;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.List;


public class TestContext {

    private Logger log = Log.getLogger(TestContext.class);
    private WebDriver driver;
    private BrowserFactory browserFactory;
    private PageObjectManager objectManager;
    public Scenario scenario;
    public ScenarioContext scenarioContext;
    private JSONUtility jsonUtilityObj;
    private ConfigurationReader configReader;
    public List<String> navigationButtonList;
    public String allPageScreenshotFlag;
    private String randomlyPickedKeyWord;
    private boolean isScenarioViaCSS = true;
    public ConfigurationReader configurationReader;


    @Before
    public void setUp(Scenario scenario) throws MalformedURLException {
         log.info("=================" + scenario.getName() + " execution starts" + "===================");
         this.scenario = scenario;
       // jsonUtilityObj = new JSONUtility();
        scenarioContext = new ScenarioContext();
        configReader = new ConfigurationReader();
        allPageScreenshotFlag = configReader.get("allPageScreenshot");
        browserFactory = new BrowserFactory();
        browserFactory.initiateDriver(configReader.getBrowserName());
        driver = browserFactory.getDriver();
        //objectManager = new PageObjectManager(driver, scenario);
        long threadId = Thread.currentThread().getId();
        String processName = ManagementFactory.getRuntimeMXBean().getName();
        System.out.println("Started in thread: " + threadId + ", in JVM: " + processName);
        log.info("Successfully lunched the chrome browser");
    }


@After
    public void cleanUp() throws Exception {
        if(configReader.get("browserName").equalsIgnoreCase("chrome_profile")||configReader.get("browserName").equalsIgnoreCase("CHROME_HEADLESS"))
        {browserFactory.deleteDirectory();}
        takeSnapShot();

        log.info("=================" + scenario.getName() + " execution ends" + "===================");
//      eyes.closeAsync();
        if (driver != null) {
            driver.quit();
            driver = null;
        }

        if (jsonUtilityObj != null) {
            jsonUtilityObj = null;
        }

        if (scenarioContext != null) {
            scenarioContext.clearContext();
        }

//      eyes.abortIfNotClosed();
    }

    public PageObjectManager getObjectManager() {
        return objectManager;
    }

    public WebDriver getDriver() {
        return driver;
    }

    public void takeSnapShot() {
        if (scenario.isFailed()) {
            //Code to take full page screenshot
            ByteArrayOutputStream imageStream = new ByteArrayOutputStream();
            scenario.write("URL - " + driver.getCurrentUrl());
            PageSnapshot snapshot = Shutterbug.shootPage(driver, ScrollStrategy.BOTH_DIRECTIONS, true);
            ((JavascriptExecutor) driver).executeScript("window.scrollTo(0,0)");

            try {
                ImageIO.write(snapshot.getImage(), "png", imageStream);
                imageStream.flush();
            } catch (IOException e) {
                e.printStackTrace();
            }
            byte[] source = imageStream.toByteArray();
            scenario.embed(source, "image/png");
        }
    }

    public JSONUtility getJsonUtilityObj() {
        return jsonUtilityObj;
    }

    public String getRandomlyPickedKeyWord() {
        return randomlyPickedKeyWord;
    }

    public void setRandomlyPickedKeyWord(String randomlyPickedKeyWord) {
        this.randomlyPickedKeyWord = randomlyPickedKeyWord;
    }

    public boolean isScenarioViaCSS() {
        return isScenarioViaCSS;
    }

    public BrowserFactory getBrowserFactory(){
        return browserFactory;
    }

    public ConfigurationReader getConfigReader() {
        return configReader;
    }
}
