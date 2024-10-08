package com.scale.utility;

import com.scale.businessPages.*;
import io.cucumber.java.Scenario;
import org.openqa.selenium.WebDriver;

public class PageObjectManager {
    private WebDriver driver;
    private Scenario scenario;


    //Page objects
    private HomePage homePageObj;
    private GMLandingPage gmLandingPage;
    private SearchFrameworkPage searchFrameworkPage;
    private E2EPage e2EPage;
    private GMResultPage gmResultPage;
    private ContactCCSPage contactCCSPage;
    private AgreementPage agreementPage;
    private SectorsPage sectorsPage;

    private AboutCCSPage aboutCCSPage;
    private EventsPage eventsPage;
    private NewsPage newsPage;
    private SearchSuppliersPage searchSuppliersPage;
    private ProductAndServicesPage productAndServicesPage;
    private InformationForBuyersAndSuppliersPage informationForBuyersAndSuppliersPage;
    private SocialValuePage socialValuePage;
    public PageObjectManager(WebDriver driver, Scenario scenario) {
        this.driver = driver;
        this.scenario = scenario;
    }

    public HomePage getHomePageObj() {
        return homePageObj == null ? homePageObj = new HomePage(driver, scenario) : homePageObj;
    }

    public GMLandingPage getGmLandingPageObj() {
        return gmLandingPage == null ? gmLandingPage = new GMLandingPage(driver, scenario) : gmLandingPage;
    }

    public SearchFrameworkPage getSearchFrameworkPageObj() {
        return searchFrameworkPage == null ? searchFrameworkPage = new SearchFrameworkPage(driver, scenario) : searchFrameworkPage;
    }

    public E2EPage getE2EPageObj() {
        return e2EPage == null ? e2EPage = new E2EPage(driver, scenario) : e2EPage;
    }

    public AboutCCSPage getAboutCCSPageObj() {
        return aboutCCSPage == null ? aboutCCSPage = new AboutCCSPage(driver, scenario) : aboutCCSPage;
    }
    public EventsPage getEventPageObj() {
        return eventsPage == null ? eventsPage = new EventsPage(driver, scenario) : eventsPage;
    }
    public InformationForBuyersAndSuppliersPage getInformationForBuyersAndSuppliersPageObj() {
        return informationForBuyersAndSuppliersPage == null ? informationForBuyersAndSuppliersPage = new InformationForBuyersAndSuppliersPage(driver, scenario) : informationForBuyersAndSuppliersPage;
    }
    public SocialValuePage getSocialValuePageObj() {
        return socialValuePage == null ? socialValuePage = new SocialValuePage(driver, scenario) : socialValuePage;
    }
    public NewsPage getNewsPageObj() {
        return newsPage == null ? newsPage = new NewsPage(driver, scenario) : newsPage;
    }
    public SearchSuppliersPage getsearchSuppliersPageObj() {
        return searchSuppliersPage == null ? searchSuppliersPage = new SearchSuppliersPage(driver, scenario) : searchSuppliersPage;
    }
    public ProductAndServicesPage getproductAndServicesPageObj() {
        return productAndServicesPage == null ? productAndServicesPage = new ProductAndServicesPage(driver, scenario) : productAndServicesPage;
    }
    public SectorsPage getSectorsPageObj() {
        return sectorsPage == null ? sectorsPage = new SectorsPage(driver, scenario) : sectorsPage;
    }


    public GMResultPage getGmSearchResultPageObj() { return gmResultPage == null ? gmResultPage = new GMResultPage(driver, scenario) : gmResultPage; }

    public ContactCCSPage getContactCCSPageObj() { return contactCCSPage == null ? contactCCSPage = new ContactCCSPage(driver, scenario) : contactCCSPage; }

    public AgreementPage getAgreementPageObj() { return agreementPage == null ? agreementPage = new AgreementPage(driver, scenario) : agreementPage;}
}