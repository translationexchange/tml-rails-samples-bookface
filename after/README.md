<p align="center">
  <img src="https://raw.github.com/tr8n/tr8n/master/doc/screenshots/tr8nlogo.png">
</p>

Tr8n Sample Application
==================

This sample application demonstrates some of Tr8n's capabilities


Installation
==================

To install the app, use:

```ssh
$ git clone https://github.com/tr8n/tr8n_samples_bookface_rails.git
$ cd tr8n_samples_bookface_rails
$ bundle
$ bin/rails s
```

Open your browser and point to:

http://localhost:3000



If you would like to control the application on Sandbox, register at:

https://sandbox.tr8nhub.com

and update Application.rb file with your Key and Secret:

```ruby
Tr8n.configure do |config|
  config.application = {
      :host => "https://sandbox.tr8nhub.com",
      :key => "YOUR KEY",
      :secret => "YOUR SECRET"
  }
end
```

This will allow you to add more languages, become app translator, and much more...


Where can I get more information?
==================

* Register on Tr8nHub.com: https://tr8nhub.com

* Read Tr8nHub's documentation: http://wiki.tr8nhub.com

* Visit Tr8nHub's blog: http://blog.tr8nhub.com

* Follow Tr8nHub on Twitter: https://twitter.com/Tr8nHub

* Connect with Tr8nHub on Facebook: https://www.facebook.com/pages/tr8nhubcom/138407706218622

* If you have any questions or suggestions, contact us: feedback@tr8nhub.com


