const { client } = require('nightwatch-api');
const { Given, Then, When } = require('cucumber');

Given('I have a valid web application integrated with Usabilla', async function () {
  await  client.url('https://usabilla.com/')
});

Then('Feedback button should display',  async function () {
  await client.waitForElementVisible('body')
               .waitForElementPresent('.usabilla_live_button_container > iframe')
               .assert.attributeContains('.usabilla_live_button_container > iframe', 'title', 'Usabilla Feedback Button')
});
When('I click on feedback button',  async function () {
  await client.click('.usabilla_live_button_container')
});
Then('Usabilla feedback pop up get display',  async function () {
  await  client.waitForElementPresent('.usabilla_scroller_area')

});
Given('I have pop up with Generic feedback button', async function () {
  await client.url('https://usabilla.com/')
               .waitForElementVisible('body')
               .pause(3000)
               .waitForElementVisible('a.optanon-allow-all')
               .click("a.optanon-allow-all")
               .waitForElementPresent('.usabilla_live_button_container > iframe')
               .assert.attributeContains('.usabilla_live_button_container > iframe', 'title', 'Usabilla Feedback Button')
               .click('.usabilla_live_button_container')
               .waitForElementPresent('.usabilla_scroller_area')

});
When('I give feedback using Generic feedback button', async function () {
  await client.waitForElementVisible(".usabilla_scroller_area > iframe")
               .frame(4)
               .waitForElementPresent(".choice_general h4")
               .click('.choice_general h4')
               .frame(null)
});
Then('I able to see new pop up with different kind of feedbacks', async function () {
  await client.frame(4)
                .waitForElementVisible("ul.rating li.rating_1")
                .waitForElementVisible("ul.rating li.rating_2")
                .waitForElementVisible("ul.rating li.rating_3")
                .waitForElementVisible("ul.rating li.rating_4")
                .waitForElementVisible("ul.rating li.rating_5")
});
When('I choose Love kind of feedback', async function () {
  await client.click('ul.rating li.rating_5')
});
Then('I see a drop down which have suggestion type in the list', async function () {
  await client.waitForElementVisible("select.text")
                .waitForElementVisible("option[value='suggestion']")
                .waitForElementVisible("option[value='compliment']")
                .waitForElementVisible("option[value='bug']")
                .waitForElementVisible("option[value='question']")
                .click("option[value='suggestion']")
});

When('I select  type suggestion', async function () {
  await  client.waitForElementVisible("select.text")
                .waitForElementVisible("option[value='suggestion']")
                .click("option[value='suggestion']")
});
Then('I see form to give a suggestion', async function () {
  await client.waitForElementVisible("h4#comment-input-suggestion")
               .waitForElementVisible("h4#email-input-suggestion")
               .waitForElementVisible("h4#nps-input-suggestion")
});

When ('I fill the  form and submit', async function () {
  await client .setValue("[data-condition='suggestion'] .comment_input textarea", "Amazing site")
               .setValue("[data-condition='suggestion'] .email_input .text","feedback@gmail.com")
               .click("button.submit")

});

Then('I see a pop with a message of submitting feedback', async function () {
  await client.waitForElementVisible(".usabilla_ui_holder .feedback h2")
                .assert.containsText('.usabilla_ui_holder .feedback h2', "Thanks for leaving feedback!")
});

Then('I continue my browsing', async function () {
  await client.waitForElementVisible(".continue")
                .click('.continue')
});
