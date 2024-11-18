package com.scale.businessPages;

import com.scale.utility.Actions;
import com.scale.utility.ConfigurationReader;
import com.scale.utility.StringUtils;

import io.cucumber.java.Scenario;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;


import java.time.Duration;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import static java.lang.Integer.parseInt;
import static org.w3c.dom.xpath.XPathResult.FIRST_ORDERED_NODE_TYPE;

public class GMResultPage extends Actions {
    public String contactCcs = "//*[@class='contact-ccs-btn']/a";
    private WebDriver driver;
    private ConfigurationReader configReaderObj;
    private Logger log = LogManager.getLogger(GMResultPage.class);
    @FindBy(id = "definitions")
    private WebElement routesToMarketDefinition;
    @FindBy(xpath = "//h2[@class='govuk-heading-xl page-title govuk-!-margin-bottom-2'][contains(text(),'Based on your answers, there is')]")
    private WebElement gmPageResultTitle;
    @FindBy(xpath = "//div[@class='govuk-summary-list__row']")
    private WebElement questionsList;
    @FindBy(xpath = "//p[contains(text(),'Show details')]")
    private WebElement btnShowDetails;
    @FindBy(xpath = "//h2[@class='govuk-heading-xl page-title']")
    private WebElement gmResultHeader;
    @FindBy(xpath = "//a[@class='govuk-link'][contains(text(), 'Recommendation')]")
    private WebElement recommendationCta;
    @FindBy(xpath = "//a[@class='govuk-link'][contains(text(), 'What are your options')]")
    private WebElement whatAreYourOptionsCta;
    @FindBy(xpath = "//a[@class='govuk-link'][conYtains(text(), 'Definitions')]")
    private WebElement definitionsCta;
    @FindBy(xpath = "//a[@class='govuk-link'][contains(text(), 'Your answers')]")
    private WebElement yourAnswersCta;
    @FindBy(xpath = "//span[@class='govuk-details__summary-text'][contains(text(), 'Details')]")
    private WebElement detailsCta;
    @FindBy(xpath = "//a[@class='govuk-link'][contains(text(), 'Linen and Laundry Services')]")
    private WebElement linenAndLaundryServicesLink;
    @FindBy(xpath = "//a[@class='govuk-link'][contains(text(), 'Contact')]")
    private WebElement contactCCSLink;
    @FindBy(xpath = "//a[contains(text(), 'Start over to change your answers')]")
    private WebElement startOverToChangeYourAnswersCTA;
    @FindBy(id = "accordion-default-heading-1")
    private WebElement recommendationSummaryTitleSection;
    @FindBy(id = "accordion-with-summary-sections-summary-1")
    private WebElement recommendationSummaryBodySection;
    @FindBy(xpath = "//details[@class='govuk-details']")
    private WebElement detailSectionContent;
    @FindBy(xpath = "//span[@class='govuk-details__summary-text']")
    private WebElement detailSectionCta;
    @FindBy(xpath = "//button[@class='govuk-accordion__open-all']")
    private WebElement openAllCta;
    @FindBy(xpath = "//button[@class='govuk-accordion__section-button']")
    private WebElement accordions;
    @FindBy(xpath = "//p[@class='govuk-link'][contains(text(), 'Details')]")
    private WebElement detailsLink;
    @FindBy(xpath = "//div[@id='accordion-with-summary-sections-content-1']//following-sibling::p")
    private WebElement frameworkIdAndExpirationDateSection;
    @FindBy(xpath = "//div[@id='accordion-with-summary-sections-content-1']//following-sibling::p[last()]")
    private WebElement frameworkDescriptionSection;
    @FindBy(linkText = "//p[contains(text(),'Show Details')]")
    private WebElement showDetails;
    @FindBy(xpath = "//div//button//h3")
    private List<WebElement> agreementResultText;
    @FindBy(xpath = "//strong[normalize-space(text())='Agreement Type:']/following-sibling::text()[1]")
    private WebElement agreementTypeText;
    @FindBy(xpath = "//*[@class='govuk-summary-list__value']")
    private List<WebElement> summaryListText;
    @FindBy(xpath = "//*[@id='accordion-default-heading-1']/h3")
    private WebElement agreementResultTextOne;
    @FindBy(xpath = "//*[@id='accordion-default-heading-2']/h3")
    private WebElement agreementResultTextTwo;
    @FindBy(xpath = "(//h3)[1]")
    private WebElement lblEnergySolution;

    public GMResultPage(WebDriver driver, Scenario scenario) {
        this.driver = driver;

        PageFactory.initElements(driver, this);
        this.wait = new WebDriverWait(this.driver, Duration.ofSeconds(30));
    }

    public void gmResultPage() {
        waitForSeconds(2);
        WebElement gmResultPage = driver.findElement(By.xpath("//h2[contains(text(),'Based on your answers, there is')]"));
        if (gmResultPage.isDisplayed()) {
            gmResultPage.click();
            String gmPageTest = gmResultPage.getText();
            Assert.assertTrue(gmPageTest.contains("Based on your answers, there is"));
            log.info("User is on guided match search results");
            scenario.log("User is on guided match search results");
        } else {
            log.info("User is not on guided match search results");
            scenario.log("User is not on guided match search results");
        }
    }

    public void gmNeedMoreInformationResultPage() {
        waitForSeconds(2);
        WebElement gmResultPage = driver.findElement(By.xpath("//h1[contains(text(),'We need more information to help you')]"));
        if (gmResultPage.isDisplayed()) {
            gmResultPage.click();
            String gmPageTest = gmResultPage.getText();
            Assert.assertTrue(gmPageTest.contains("We need more information to help you"));
            log.info("User is on guided match search results with request for more information");
            scenario.log("User is on guided match search results with request for more information");
        } else {
            log.info("User is not on guided match search results with request for more information");
            scenario.log("User is not on guided match search results with request for more information");
        }
    }

    private List<WebElement> getQuestionsInList() {
        return questionsList.findElements(By.xpath("//div[@class='govuk-summary-list__row']"));
    }

    private Map<Integer, String> getQuestionsRowsText() {
        Map<Integer, String> map =
                IntStream.range(0, getQuestionsInList().size())
                        .boxed()
                        .collect(Collectors.toMap(i -> i, i -> getQuestionsInList().get(i).getText()));
        return map;
    }

    private int getQuestionListNumber() {
        return getQuestionsInList().size();
    }

    private String getYourInitialSearchTerm() {
        String initialSearchTermText = "Your initial search term";
        String returnedSearchTerm = null;
        int initialSearchPhraseIndex = -1;
        for (Map.Entry<Integer, String> entry : getQuestionsRowsText().entrySet()) {
            if (entry.getValue().contains(initialSearchTermText)) {
                initialSearchPhraseIndex = entry.getKey();
                if (!(initialSearchPhraseIndex == 0)) {
                    log.info("The <" + initialSearchTermText + "> was not found as the first in the list, but the " + initialSearchPhraseIndex + 1);
                    scenario.log("The <" + initialSearchTermText + "> was not found as the first in the list, but the " + initialSearchPhraseIndex + 1);
                }
            }
        }
        if (initialSearchPhraseIndex == -1) {
            log.info("The <" + initialSearchTermText + "> was not found in the question list");
            scenario.log("The <" + initialSearchTermText + "> was not found in the question list");
        } else {
            returnedSearchTerm = (getQuestionsRowsText().get(initialSearchPhraseIndex).replace(initialSearchTermText, "")).replace("Change", "").trim();
        }
        return returnedSearchTerm;
    }

    private String getFrameworksLotsRecommended() {
        String frameworkLotsRecommendedText = "Agreement or lot recommendations";
        String returnedSearchPhrase = null;
        int frameworkLotsRecommendedIndex = -1;
        for (Map.Entry<Integer, String> entry : getQuestionsRowsText().entrySet()) {
            if (entry.getValue().contains(frameworkLotsRecommendedText)) {
                frameworkLotsRecommendedIndex = entry.getKey();
            }
        }
        String finalReturnedSearchPhrase = null;
        if (frameworkLotsRecommendedIndex == -1) {
            log.info("The <" + frameworkLotsRecommendedText + "> was not found in the question list");
            scenario.log("The <" + frameworkLotsRecommendedText + "> was not found in the question list");
        } else {
            returnedSearchPhrase = (getQuestionsRowsText().get(frameworkLotsRecommendedIndex).replace(frameworkLotsRecommendedText, "")).trim();
            finalReturnedSearchPhrase = returnedSearchPhrase.replace("£", "");
        }
        return finalReturnedSearchPhrase;
    }

    private int getIndexOfQuestionByText(String expectedQuestionOrAnswer) {
        int initialSearchPhraseIndex = -1;
        for (Map.Entry<Integer, String> entry : getQuestionsRowsText().entrySet()) {
            if (entry.getValue().contains(expectedQuestionOrAnswer)) {
                initialSearchPhraseIndex = entry.getKey();
            }
        }
        if (initialSearchPhraseIndex == -1) {
            log.info("The <" + expectedQuestionOrAnswer + "> was not found in the question list");
            scenario.log("The <" + expectedQuestionOrAnswer + "> was not found in the question list");
        }
        return initialSearchPhraseIndex;
    }

    private ArrayList<String> getTheSpecificQuestionRow(int questionNumber) {
        String rowText = getQuestionsRowsText().get(questionNumber);
        ArrayList<String> addedRowsSegments = new ArrayList<>();
        addedRowsSegments.add((StringUtils.getMatchedGroupByIndexFromAString(rowText, "(^.*:|^.*\\?)(.*)", 1)).trim());
        if (!(rowText.contains("Change"))) {
            addedRowsSegments.add((StringUtils.getMatchedGroupByIndexFromAString(rowText, "(^.*:|^.*\\?)(.*)", 2)).trim());
            addedRowsSegments.add("");
        } else {
            addedRowsSegments.add((StringUtils.getMatchedGroupByIndexFromAString(rowText, "(^.*:|^.*\\?)(.*)(Change$)", 2)).trim());
            addedRowsSegments.add((StringUtils.getMatchedGroupByIndexFromAString(rowText, "(^.*:|^.*\\?)(.*)(Change$)", 3)).trim());
        }
        return addedRowsSegments;
    }

    private ArrayList<String> getTheSpecificQuestionRow(String textFromQuestionOrAnswer) {
        return getTheSpecificQuestionRow(getIndexOfQuestionByText(textFromQuestionOrAnswer));
    }

    public void checkTheInitialSearchPhrase(String expectedSearchPhrase) {
        Assert.assertEquals("The initial searched phrase: <" + getYourInitialSearchTerm() + "> is not equal with the expected one <" + expectedSearchPhrase + ">",
                expectedSearchPhrase.toLowerCase(), getYourInitialSearchTerm().toLowerCase());
    }

    public void checkFrameworksLotsRecommended(String expectedFrameworksLotsRecommended) {

        Assert.assertEquals("The recommendation: <" + getFrameworksLotsRecommended() + "> is not equal with the expected one <" + expectedFrameworksLotsRecommended + ">",
                expectedFrameworksLotsRecommended.toLowerCase(), getFrameworksLotsRecommended().toLowerCase());
    }

    public void checkTheAnswerForTheQuestion(String Question, String ExpectedAnswer) {
        Assert.assertEquals("The question: <" + Question + "> actual answer <" + getTheSpecificQuestionRow(Question).get(1).trim() + " > is not equal with the expected one <" + ExpectedAnswer + ">",
                ExpectedAnswer, getTheSpecificQuestionRow(Question).get(1));
    }

    public void checkTheAnswerForTheQuestion(int QuestionNumber, String ExpectedAnswer) {
        Assert.assertEquals("The question with the number: <" + QuestionNumber + "> actual answer <" + getTheSpecificQuestionRow(QuestionNumber).get(1).trim() + " > " +
                        "is not equal with the expected one <" + ExpectedAnswer + ">",
                ExpectedAnswer, getTheSpecificQuestionRow(QuestionNumber).get(1));
    }

    public void clickChangeToTheRelatedQuestion(int questionNumber) {
        if (getTheSpecificQuestionRow(questionNumber).get(2).trim().equals("Change")) {
            String questionText = getTheSpecificQuestionRow(questionNumber).get(1).trim();
            String xpathAdjacentChangeButton = String.format("//dd[@class='govuk-summary-list__value'][contains(text(), '%s')]//following-sibling::dd//a", questionText);
            WebElement adjacentChangeButton = driver.findElement(By.xpath(xpathAdjacentChangeButton));
            wait.until(ExpectedConditions.elementToBeClickable(By.xpath(xpathAdjacentChangeButton)));
            JavascriptExecutor executor = ((JavascriptExecutor) driver);
            executor.executeScript("arguments[0].click();", adjacentChangeButton);
        } else {
            log.info("The mentioned question with <" + questionNumber + "> does not have the \"Change\" CTA button provided");
            scenario.log("The mentioned question with <" + questionNumber + "> does not have the \"Change\" CTA button provided");
        }
    }

    public void clickChangeToTheRelatedQuestion(String Question) {
        int questionNumber = getIndexOfQuestionByText(Question);
        clickChangeToTheRelatedQuestion(questionNumber);
    }

    public void checkRecommendationsFromMainSection(String expectedResult, int... recommendationNumber) {
        String recommendation = recommendationNumber.length > 0 ? String.valueOf(recommendationNumber[0]) : "1";
        String xpath;
        if (!expectedResult.equals("")) {
            xpath = "//div[@id='accordion-with-summary-sections-content-" + recommendation + "']//div//div/h3";
        } else {
            xpath = "//div[@id='accordion-with-summary-sections-content-" + recommendation + "']//div[last()]";
        }
        WebElement recommendationSummaryBodySection = driver.findElement(By.xpath(xpath));
        Assert.assertEquals("The expected list of recommendation does not match with the actual", expectedResult, recommendationSummaryBodySection.getText());
    }

    public void checkTitleFromMainSection(String expectedResult, int... titleNumber) {
        String title = titleNumber.length > 0 ? String.valueOf(titleNumber[0]) : "1";
        String headerId = "accordion-default-heading-" + title;
        WebElement recommendationSummaryTitleSection = driver.findElement(By.id(headerId));
        Assert.assertEquals("The expected list of recommendation does not match with the actual", expectedResult, recommendationSummaryTitleSection.getText());
    }

    public void checkContactUsLinkIsDisplayed() {
        waitForElementToBeVisible(contactCCSLink);
        Assert.assertTrue("The contact link is not displayed", contactCCSLink.isDisplayed());
    }

    public void checkQuestionsListIsDisplayed() {
        waitForElementToBeVisible(questionsList);
        Assert.assertTrue("The question list is not displayed", questionsList.isDisplayed());
    }

    public String getTheLotsNumberForRecommendation() {
        String lotsNumber = "-1";
        if (gmResultHeader.getText().contains("lots")) {
            lotsNumber = StringUtils.getMatchedGroupByIndexFromAString(gmResultHeader.getText(), "(\\s\\d+\\s)(lots)", 1).trim();
        } else if (gmResultHeader.getText().contains("lot")) {
            lotsNumber = StringUtils.getMatchedGroupByIndexFromAString(gmResultHeader.getText(), "(\\s\\d+\\s)(lot)", 1).trim();
        } else {
            log.info("The mentioned scenario does not have recommended lots number matched");
            scenario.log("The mentioned scenario does not have recommended lots number matched");
        }
        return lotsNumber;
    }

    public void checkTheLotsNumber(String expectedlotsNumber) {
        Assert.assertEquals("The expected number of recommended lots does not match with the actual", expectedlotsNumber, getTheLotsNumberForRecommendation());
    }

    public void checkTheDetailsCTAIsSuccessfullyExpanding() {
        int size = driver.findElements(By.xpath("//div[@class='govuk-accordion__section-heading']")).size();
        for (int i = 0; i < size; i++) {
            WebElement detailsLinkInUse = driver.findElements(By.xpath("//div[@class='govuk-accordion__section-heading']//following-sibling::p")).get(i);
            if (!(detailsLinkInUse.getText().equals("Show details"))) {
                log.info("The details related to CTA is already expanded");
                scenario.log("The details related to CTA is already expanded");
            } else {
                wait.until(ExpectedConditions.elementToBeClickable(detailsLinkInUse));
                JavascriptExecutor executor = ((JavascriptExecutor) driver);
                executor.executeScript("arguments[0].click();", detailsLinkInUse);
                waitForSeconds(2);
            }
            //Assert.assertTrue("The details section related to CTA are not expanded", detailsLinkInUse.getText().equals("Hide Details"));
        }
    }

    public void checkDetailsFrameworkIdExpirationDate(String frameworkId, String expirationDate, String description, int... indexes) {
        String index = indexes.length > 0 ? String.valueOf(indexes[0]) : "1";
        String xpath = "//div[@id='accordion-with-summary-sections-content-" + index + "']//following-sibling::p";
        WebElement frameworkIdAndExpirationDateSection = driver.findElement(By.xpath(xpath));
        String idAndExpiration = frameworkIdAndExpirationDateSection.getText();
        String actualFrameworkId = StringUtils.getMatchedGroupByIndexFromAString(idAndExpiration, "(^Agreement ID: )(.*)(End date: )(.*$)", 2);
        String actualExpirationDate = StringUtils.getMatchedGroupByIndexFromAString(idAndExpiration, "(^Agreement ID: )(.*)(End date: )(.*$)", 4);
        Assert.assertEquals("The actual Agreement ID: <" + actualFrameworkId.trim() + "> is not equal with the expected one <" + frameworkId + ">",
                frameworkId, actualFrameworkId.trim());
        Assert.assertEquals("The actual expiration date: <" + actualExpirationDate + "> is not equal with the expected one <" + expirationDate + ">",
                expirationDate, actualExpirationDate);
        String xpathDescription = "//div[@id='accordion-with-summary-sections-content-" + index + "']/div";
        WebElement frameworkDescriptionSection = driver.findElement(By.xpath(xpathDescription));
        String actualDescription = frameworkDescriptionSection.getText();
        Assert.assertEquals("The actual framework description: <" + actualDescription + "> is not equal with the expected one <" + description + ">",
                description, actualDescription);
    }

    public void checkMappedListItems(String message, String xPath, Map<Integer, String> map, String configFilePath, String... configurationConcatenation) {
        String concatProperty = configurationConcatenation.length > 0 ? configurationConcatenation[0] : "";
        ConfigurationReader reader = new ConfigurationReader(configFilePath);
        map.entrySet().stream().
                forEach(e -> Assert.assertEquals("The actual " + message + ": <" + driver.findElement(By.xpath(String.format(xPath, (e.getKey() + 1)))).getText() +
                                "> is not equal with the expected one <" + reader.returnProperty(e.getValue()) + concatProperty + "> for <" + e.getValue() + concatProperty + ">",
                        reader.returnProperty(e.getValue() + concatProperty), driver.findElement(By.xpath(String.format(xPath, (e.getKey() + 1)))).getText()));
    }

    public void checkFrameworkLotsAndDetails(String[] recommendations, int... indexes) {
        String index = indexes.length > 0 ? String.valueOf(indexes[0]) : "1";
        Map<Integer, String> recommendationsCollection = IntStream.range(0, recommendations.length).boxed().collect(Collectors.toMap(i -> i, i -> recommendations[i]));
        String recommendationTitleXpath = "//div[@id='accordion-with-summary-sections-content-" + index + "']//div//div[%s]//h3";
        String recommendationDescriptionXpath = "//div[@id='accordion-with-summary-sections-content-" + index + "']//following-sibling::div//div[%s]//div[1]";
        checkMappedListItems("recommendation title", recommendationTitleXpath, recommendationsCollection, "config//LotsRecommendation.properties");
        checkMappedListItems("recommendation description", recommendationDescriptionXpath, recommendationsCollection,
                "config//LotsRecommendation.properties", "-description");
    }

    // TODO: 8/7/2020 rework method when needed
    public void checkAdjacentStartProcurementButton(String[] recommendations) {
        Map<Integer, String> recommendationsCollection = IntStream.range(0, recommendations.length).boxed().collect(Collectors.toMap(i -> i, i -> recommendations[i]));
        String recommendationTitleXpath = "//div//following-sibling::h3[%s]";
        String startProcurementButtonXpath = "//div//following-sibling::h3[%s]//following-sibling::div//button";
        checkMappedListItems("recommendation title", recommendationTitleXpath, recommendationsCollection, "config//LotsRecommendation.properties");
        recommendationsCollection.entrySet().stream()
                .forEach(e -> Assert.assertTrue("The start procurement button was not found adjacent to  <" + e.getValue() +
                        "> section", driver.findElement(By.xpath(String.format(startProcurementButtonXpath, (e.getKey() + 1)))).isDisplayed()));
    }

    public void checkFacilitiesManagementHeader() {
        checkTitleFromMainSection("Facilities Management Marketplace");
    }

    public void checkEscapeRouteHeaderContent(String expectedTitle, int... indexes) {
        int index = indexes.length > 0 ? indexes[0] : 1;
        checkTitleFromMainSection(expectedTitle, index);
    }

    public String getRoutesToMarketDefinitionContent() {
        return routesToMarketDefinition.getText();
    }

    public void checkRoutesToMarketContent(String expectedRoutesDefinitionContent) {
        Assert.assertTrue("The routes to market definitions are not displayed in the UI", routesToMarketDefinition.isDisplayed());
        Assert.assertEquals("The expected routes to market definitions content is not the same with the actual", expectedRoutesDefinitionContent, getRoutesToMarketDefinitionContent());
    }

    public void clickShowDetails() {
        btnShowDetails.click();
    }

    public void clickElementWithJavaScript(String xpath) {
        WebElement element = driver.findElement(By.xpath(xpath));
        JavascriptExecutor executor = (JavascriptExecutor) driver;
        executor.executeScript("arguments[0].click();", element);
        log.info("Clicked on specified element");
    }

    public List<WebElement> getAgreementResultText() {
        return agreementResultText;
    }

    public String getAgreementTypeText() {
        JavascriptExecutor js = (JavascriptExecutor) driver;
        String xpathExpression = "//strong[normalize-space(text())='Agreement Type:']/following-sibling::text()[1]";
        String result = (String) js.executeScript(
                "var xpath = arguments[0]; " +
                        "var element = document.evaluate(xpath, document, null, 9, null).singleNodeValue;" +
                        "return element ? element.textContent.trim(): '';",
                xpathExpression);
        return result;

    }


    public List<WebElement> getSummaryListText() {
        return summaryListText;
    }

    public void clickContactButton() {
        clickElementWithJavaScript(contactCcs);
    }

    public String getAgreementResultTextOne() {
        return agreementResultTextOne.getText();
    }

    public String getAgreementResultTextTwo() {
        return agreementResultTextTwo.getText();
    }

    public void assertEnergyResult(String energySolution) {
        waitForSeconds(1);
        String expectedEnergySolution = lblEnergySolution.getText();
        Assert.assertEquals(expectedEnergySolution, energySolution);
    }
}

