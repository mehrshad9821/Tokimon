Devise with omniauth(venmo,twitter,facebook)-sample-application
====================================================


In <b>devise.rb</b>, configure below lines with your app id and app secret. In code below i have set SSL verification to false, you can enable it by setting value to true.

require "omniauth-facebook"
config.omniauth :facebook, "APP_ID", "APP_SECRET", :client_options => {:ssl => {:verify => false}}

require "omniauth-twitter"
config.omniauth :twitter, "APP_ID", "APP_SECRET", :client_options => {:ssl => {:verify => false}}

require "omniauth-venmo"
config.omniauth :venmo, 'APP_ID', 'APP_SECRET',{:client_options => {:ssl => {:verify => false}}}

</br>

<b>Example To specify ssl certificate</b>

config.omniauth :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'], :client_options => {:ssl => {:ca_file => '/usr/lib/ssl/certs/ca-certificates.crt'}}} 

<b>
<a href="http://deviseomniauth.herokuapp.com/">DEMO</a>
</b>

NOTE:
</br>
1.Be sure to include your production URL in your APP( facebook APP or Twitter APP or Venmo APP)

