# ------------------
# Create a campaign\
# ------------------

# Include the SendinBlue library\
require 'sib-api-v3-sdk'

# Instantiate the client\
SibApiV3Sdk.configure do |config|
  config.api_key['M7Umg6acvn81jfK3'] = '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'
end

api_instance = SibApiV3Sdk::EmailCampaignsApi.new

# Define the campaign settings \
email_campaigns = { 
    "name"=> "Campaign sent via the API",
    "subject"=> "My subject",
    "sender"=> { "name"=> "From name", "email"=> "jimrv8@yahoo.com"},
    "type"=> "classic",

    # Content that will be sent\
    "htmlContent"=> "Congratulations! You successfully sent this example campaign via the SendinBlue API.",
    
    # Select the recipients\
    "recipients"=> { "listIds"=> [2, 7] },

    # Schedule the sending in one hour\
    "scheduledAt"=> "2018-01-01 00:00:01"
}

# Make the call to the client\
begin
  result = api_instance.create_email_campaign(email_campaigns)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling EmailCampaignsApi->create_email_campaign: #{e}"
end