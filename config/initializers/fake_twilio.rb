if Rails.env.test?
  require File.expand_path(Rails.root.join('spec', 'fake_twilio_client'))
  Twilio::REST.send(:remove_const, :Client)
  Twilio::REST::Client = FakeTwilioClient
end
