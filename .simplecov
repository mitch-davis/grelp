# https://github.com/colszowka/simplecov#using-simplecov-for-centralized-config
# Maybe put some conditional here not to execute the code below unless ENV['COVERAGE'] == 'true'
SimpleCov.start do
  @filters = []
end
