# config/initializers/pusher.rb
require 'pusher'

Pusher.app_id = "1007572"
Pusher.key = "c008b4d2599134a44e8a"
Pusher.secret = "ffdf4a6bb4a20eb0635b"
Pusher.cluster = "ap2"
Pusher.logger = Rails.logger
Pusher.encrypted = true
