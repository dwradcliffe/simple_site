require 'helper'

class TestSimpleSite < Test::Unit::TestCase
  
  should "have empty buckets on init" do
    s = SimpleSite::Site.new
    assert_equal [], s.options[:buckets]
  end
  
  should "have one bucket" do
    s = SimpleSite::Site.new(:bucket => 'www.myawesomesite.com')
    assert_equal ['www.myawesomesite.com'], s.options[:buckets]
  end
  
  should "have two buckets" do
    s = SimpleSite::Site.new(:buckets => %w(www.myawesomesite.com www.myotherdomain.com))
    assert_equal ['www.myawesomesite.com', 'www.myotherdomain.com'], s.options[:buckets]
  end
  
  should "have empty list of js files" do
    s = SimpleSite::Site.new
    assert_equal [], s.options[:js_files]
  end
  
  should "have one js file" do
    s = SimpleSite::Site.new(:js_files => %w(site.js))
    assert_equal ['site.js'], s.options[:js_files]
  end
  
  should "have two js files" do
    s = SimpleSite::Site.new(:js_files => %w(site.js lib.js))
    assert_equal ['site.js', 'lib.js'], s.options[:js_files]
  end
  
end
