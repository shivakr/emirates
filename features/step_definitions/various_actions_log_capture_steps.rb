When(/^the user taps on display a popup window$/) do
  @homepage=page(Homepage).await
  @homepage.tap_on_pop_up_button
end

Then(/^verify the text on the popup window$/) do
  @homepage.verify_text_on_pop_up_window
end

Then(/^click dismiss$/) do
  @homepage.tap_on_button_dismiss
end

When(/^click on throw unhandled exception$/) do
  @homepage.tap_on_throw_unhandled_exception
end

Then(/^verify the app crashes and capture the logs$/) do
  @homepage.capture_crash
end
