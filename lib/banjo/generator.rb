require "erb"

class BanjoCLI
  class Generator
    def initialize(type)
      files = {
        controller: File.expand_path('templates/controller_template.cr', File.dirname(__FILE__))
      }
      @template = files[type.to_sym]
    end
    
    def generate(name, actions)
      file = File.read(@template) #.gsub("{{name}}", name.capitalize)
      system 'mkdir', '-p', "app/controllers/"
      output = ERB.new("<% NAME = \"#{name.capitalize}\"; ACTIONS = #{actions} %>" << file).result
      File.write("app/controllers/#{name.downcase}_controller.cr", output)
      puts "\t#{"Creating".green} app/controllers/#{name.downcase}_controller.cr"
    end
  end
end