require 'calabash-android/abase'

class Userpage < Calabash::ABase

  def trait
    "TextView marked:'Web View Interaction'"
  end

  def enter_user_name
    # touch("EditText")
    # enter_text("EditText","Shiva")
    # sleep 10
    # # element_exists("TextView marked: 'Web View Interaction'")
  end

  def select_favourite_car
    touch(query("WebView id:name"))
    sleep 5
    touch("CheckedTextView marked:'Audi'")
  end

  def choose_to_send_name
    touch(query("button index:0"))
  end


end