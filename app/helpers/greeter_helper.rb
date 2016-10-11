module GreeterHelper

  # Really available to any view, not just greeter view
  def formatted_time(time)
    time.strftime("%I:%M%p")
  end
end
