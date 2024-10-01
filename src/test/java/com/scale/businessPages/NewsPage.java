package com.scale.businessPages;

import com.scale.utility.Actions;
import io.cucumber.java.Scenario;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;
import java.util.List;

public class NewsPage extends Actions {
    private WebDriver driver;
    private Logger log = LogManager.getLogger(NewsPage.class);
    @FindBy(xpath = "//*[@id='filter_article-content-1']/div")
    private List<WebElement> typeOfArticleFilterOption;
    @FindBy(xpath = "//*[@id='filter_sector-content-1']/div")
    private List<WebElement> sectorFilterOption;
    @FindBy(xpath = "//*[@id='filter_p_and_s-content-1']/div")
    private List<WebElement> productAndSectorFilterOption;


    public NewsPage(WebDriver driver, Scenario scenario) {
        this.driver = driver;
     
        PageFactory.initElements(driver, this);
        this.wait = new WebDriverWait(this.driver, Duration.ofSeconds(30));
    }

    public List<WebElement> getTypeOfArticleFilterOption() {
        return typeOfArticleFilterOption;
    }
    public List<WebElement> getSectorFilterOption() {
        return sectorFilterOption;
    }
    public List<WebElement> getProductAndSectorFilterOption() {
        return productAndSectorFilterOption;
    }


}

