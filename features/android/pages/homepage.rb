require 'calabash-android/abase'

class Homepage < Calabash::ABase

  def trait
    "TextView marked:'selendroid-test-app'"
  end

  def select_chrome_icon
    touch("ImageButton id:'buttonStartWebview'")
    p element_exists("TextView marked:'Web View Interaction'")
  end

  def tap_on_pop_up_button
    touch("button text:'Display Popup Window'")
  end

  def verify_text_on_pop_up_window
    wait_for_text("It's a PopupWindow", timeout: 30)
  end

  def tap_on_button_dismiss
    touch("button marked:'Dismiss'")
  end

  def tap_on_throw_unhandled_exception
    touch("button marked:'Press to throw unhandled exception'")
  end

  def capture_crash
    exec('./Users/shivar/Library/Android/sdk/adb logcat >> crash.text')
  end


end
