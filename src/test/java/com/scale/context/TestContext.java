package com.scale.context;

import com.scale.framework.utility.BrowserFactory;
import com.scale.framework.utility.ConfigurationReader;
import com.scale.framework.utility.PageObjectManager;
import cucumber.api.Scenario;
import org.openqa.selenium.WebDriver;

import java.net.MalformedURLException;

public class TestContext {
    private WebDriver driver;
    private PageObjectManager pageObjectManager;
    public ConfigurationReader configurationReader;
    private BrowserFactory browserFactory;
    public Scenario scenario;
    private String randomlyPickedKeyWord;
    private boolean isScenarioViaCSS = true;


    public TestContext() throws MalformedURLException {
        configurationReader = new ConfigurationReader();
        browserFactory = new BrowserFactory();
        browserFactory.initiateDriver(configurationReader.getBrowserName());
        driver = browserFactory.getDriver();
        pageObjectManager = new PageObjectManager(driver, scenario);
    }

    public PageObjectManager getObjectManager() {
        return pageObjectManager;
    }

    public WebDriver getDriver() {
        return driver;
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
}