require File.expand_path('banjo/version', File.dirname(__FILE__))
require File.expand_path('banjo/generator', File.dirname(__FILE__))

class BanjoCLI
  def self.generate_app(name)
    `git clone https://github.com/hugoabonizio/banjo_scaffold.git #{name}`
  end
  
  def self.deps(name)
    `cd #{name} && crystal deps`
  end
  
  def self.server
    `bin/start -p $PORT`
  end
end