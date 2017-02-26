require 'calabash-android/calabash_steps'

Given(/^the user is on the home screen$/) do
  @current_page = page(Homepage).await
end

Given(/^user taps on Chrome icon$/) do
  @current_page.select_chrome_icon
end

When(/^user enters their own name$/) do
  @user_view = page(Userpage).await
end

When(/^selects their favourite car$/) do
  @user_view.select_favourite_car
end

When(/^tap on send me your name$/) do
  @user_view.choose_to_send_name
end

Then(/^your name and car is displayed$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

