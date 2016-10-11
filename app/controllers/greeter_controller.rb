class GreeterController < ApplicationController

# if methods don't do anything, you can remove them
# the routes will take care of displaying this for us.

  # Variables are not persistant here from request to request
  # use session or database
  def hello
    random_names = ["Alex", "Joe", "Bob"]
    @name = random_names.sample
    @time = Time.now
    @times_displayed ||=0
    @times_displayed += 1
  end

  def goodbye
  end
end
