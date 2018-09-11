Given("I am on the survey page") do
  @browser.goto 'https://chipotlefeedbackentry.hit2c.com/survey'
end

When("I answer all of questions") do
  sleep 10
  @browser.text_field(id: "entry_first_name").set "Joel"
  @browser.text_field(id: "entry_last_name").set "Byler"
  @browser.text_field(id: "entry_zip").set "44614"
  @browser.text_field(id: "entry_email").set "joelbyler@gmail.com"

  @browser.radio(value: '1993').parent.click
  @browser.radio(value: '1993').set
  @browser.radio(id: '2_b', value: 'Garlic').parent.click
  @browser.radio(id: '2_b', value: 'Garlic').set
  @browser.radio(id: '3_a', value: 'Denver').parent.click
  @browser.radio(id: '3_a', value: 'Denver').set
  @browser.radio(id: '4_c', value: '6').parent.click
  @browser.radio(id: '4_c', value: '6').set
  @browser.radio(id: 'entry_question_5_very_satisfied', value: 'Very satisfied').parent.click
  @browser.radio(id: 'entry_question_5_very_satisfied', value: 'Very satisfied').set

  @browser.radio(id: 'entry_accept_rules_true', value: 'true').set

end

When("I submit the form") do
  @browser.button(text: "SUBMIT").click
  sleep 5
end

Then("I should see a thank you page") do
  expect(@browser.text).not_to include("Sorry")
  expect(@browser.text).to include("CONGRATULATIONS")
  expect(@browser.text).to include("THANK YOU")
end
