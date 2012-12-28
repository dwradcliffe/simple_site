require 'rake'
require 'rake/tasklib'

module SimpleSite
  # Rake tasks for managing your site.
  #
  # Here's a basic usage example:
  #
  #   SimpleSite::Tasks.new do |site|
  #     site.js_files = "site.js"
  #     site.buckets = %w(www.myawesomesite.com www.myotherdomain.com)
  #   end
  class Tasks < ::Rake::TaskLib
    
    attr_reader :site
    
    def initialize(&site_building_block)
      @site = SimpleSite::Site.new
      site_building_block.call @site
      define
    end
    
    private
    
      def define
        
        desc "Show SimpleSite config"
        task :config do
          
          puts " "
          puts "SimpleSite config:"
          puts "AWS S3 buckets: #{@site.options[:buckets].join(', ')}"
          puts "JS files: #{@site.options[:js_files].join(', ')}"
          puts " "
          
        end
      
        desc "Generate Entire Site"
        task :gen => ["gen:html", "gen:css", "gen:js"]
      
        namespace :gen do
        
          desc "Generate HTML"
          task :html do
            @site.generate_html
          end
        
          desc "Generate CSS"
          task :css do
            @site.generate_css
          end
        
          desc "Generate JS"
          task :js do
            @site.generate_js
          end
        
        end
      
        desc "Deploy website"
        task :deploy do
          @site.deploy!
        end
      
        namespace :deploy do
        
          task :file do
            @site.deploy_file!
          end
        
        end
      
      end
    
  end
  
end