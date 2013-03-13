$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "formtastic_ajax_validation/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "formtastic_ajax_validation"
  s.version     = FormtasticAjaxValidation::VERSION
  s.authors     = ["Anton Aljoshin"]
  s.email       = ["Anton_Aleschin@mail.ru", "contact@web-deli.ru"]
  s.homepage    = "http://web-deli.ru"
  s.summary     = "Marks invalid fields of semantic form according to validation errors, received from server."
  s.description = "Marks invalid fields of semantic form according to validation errors, received from server."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.12"
end
