Before do
  args = ['--ignore-certificate-errors', '--disable-popup-blocking', '--disable-translate']
  @browser = Watir::Browser.new :chrome, options: { headless: true, args: args }
  puts @browser.title
end

After do
  @browser.close if @browser
end
