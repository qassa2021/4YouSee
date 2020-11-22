require 'report_builder'
require 'date'


Before do 
    @cadastro_page = CadastroPage.new
   
    page.driver.browser.manage.window.maximize
end

AfterStep do 
    temp_shot = page.save_screenshot("log/temp_shot.png")
    screenshot = Base64.encode64(File.open(temp_shot, "rb").read)
    #@browser.screenshot.save(screenshot)
    embed(screenshot, "image/png", "Screenshot")
end

   d = DateTime.now
   @date = d.to_s.tr(":","-")

at_exit do
    ReportBuilder.configure do |config|
        config.input_path = "log/report.json"
        config.report_path = "log/" + @date
        config.report_types = [:html]
        config.report_title = "4YouSee - webAPP"
        config.compress_image = true
        config.additional_info = {"App" => "Web:", "Data de execução" => @date}
        config.color = "indigo"
    end
    ReportBuilder.build_report
end