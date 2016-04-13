Apipie.configure do |config|
  config.app_name                = "Eating"
  config.api_base_url            = ""
  config.doc_base_url            = "/apipie"
  config.validate = false
  config.markup = Apipie::Markup::RDoc.new
  # where is your API defined?
  config.api_controllers_matcher = "#{Rails.root}/app/controllers/**/*.rb"
end
