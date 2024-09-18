package com.scale.context;


import com.assertthat.selenium_shutterbug.core.PageSnapshot;
import com.assertthat.selenium_shutterbug.core.Shutterbug;
import com.assertthat.selenium_shutterbug.utils.web.ScrollStrategy;
import com.scale.framework.utility.*;
import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import cucumber.api.java.en.Given;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
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

    public Scenario scenario;
    public ScenarioContext scenarioContext;
    public List<String> navigationButtonList;
    public String allPageScreenshotFlag;
    private Logger log = LogManager.getLogger(TestContext.class);
    private WebDriver driver;
    private BrowserFactory browserFactory;
    private PageObjectManager objectManager;
    private JSONUtility jsonUtilityObj;
    private ConfigurationReader configReader;
    private String randomlyPickedKeyWord;
    private boolean isScenarioViaCSS = true;


    @Before("@RegressionTest or @NewGM")
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
        log.info("Successfully launched the chrome browser");
    }


    @Given("User logs in to the CCS application for \"([^\"]*)\" and \"([^\"]*)\"$")
    public void user_reaches_the_landing_page_after_the_search(String ScenarioID, String searchedFramework) throws MalformedURLException, InterruptedException, FileNotFoundException {
        scenarioContext.setKeyValue("ScenarioID", ScenarioID);
        objectManager = new PageObjectManager(driver, scenario);
        String baseURL = configReader.get("baseURL");
        log.info("base.url:" + baseURL);
        if (baseURL.contains("ppd.scale")) {
            isScenarioViaCSS = false;
        }
        if (!isScenarioViaCSS) {
            if (!(searchedFramework.matches("\\w+\\srandom"))) {
                browserFactory.launchURL(baseURL, searchedFramework.toLowerCase());
            } else {
                String frameworksName = StringUtils.getMatchedGroupByIndexFromAString(searchedFramework, "(\\w+)(\\srandom)", 1);
                ArrayList<String> keywordsList = StringUtils.getTxtItemsAsList("\\config\\" + frameworksName + "KeywordsSets.txt");
                int keywordIndex = StringUtils.getRandomIntNumberInRange(0, keywordsList.size() - 1);
                randomlyPickedKeyWord = keywordsList.get(keywordIndex);
                browserFactory.launchURL(baseURL, randomlyPickedKeyWord.toLowerCase());
            }
        } else {
            browserFactory.launchURL(baseURL);
        }
    }

    @After("@RegressionTest or @NewGM")
    public void cleanUp() throws Exception {
        if (configReader.get("browserName").equalsIgnoreCase("chrome_profile") || configReader.get("browserName").equalsIgnoreCase("CHROME_HEADLESS")) {
            browserFactory.deleteDirectory();
        }
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
            PageSnapshot snapshot = Shutterbug.shootPage(driver, ScrollStrategy.BOTH_DIRECTIONS, 5);
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

    public BrowserFactory getBrowserFactory() {
        return browserFactory;
    }

    public ConfigurationReader getConfigReader() {
        return configReader;
    }

    @Given("I am on a CCS website HomePage")
    public void iAmOnACCSWebsiteHomePage() {
        {
            objectManager = new PageObjectManager(driver, scenario);
            String baseURL = configReader.get("baseURL");
            log.info("base.url:" + baseURL);
            browserFactory.launchURL(baseURL);
        }
    }
}
