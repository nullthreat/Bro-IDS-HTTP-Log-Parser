# bro_ids-http-log

This gem will parse the http log files created by BRO IDS (http://www.bro-ids.org/) and prepare the fields to be called by name in your scripts.


## Installation
To install the bro_ids-http-log parsing gem simply run the following command:

`gem install bro_ids-http-log`

## Usage

	require 'bro_ids/http/log'
	BroIds::Http:Log.parse('YOUR HTTP LOG LOCATION HERE')

## Example 1:

	require 'bro_ids/http/log'

	http_log = File.open("/nsm/bro/logs/current/http.log")
	BroIds::Http::Log.parse(http_log) do |parsed|
	  puts "At " + parsed[:timestamp] + " host " + parsed[:id_orig_h] + " issued a " + parsed[:method]  + " request to " + parsed[:host]
	end


## Example 2:

	load 'lib/parse_http.rb'

	http_log = File.open("http.log")
	BroIds::Http::Log.parse(http_log) do |parsed|
	   puts parsed[:timestamp]
	   puts parsed[:uid]
	   puts parsed[:id_orig_h]
	   puts parsed[:id_orig_p]
	   puts parsed[:id_resp_h]
	   puts parsed[:id_resp_p]
	   puts parsed[:trans_depth]
	   puts parsed[:method]
	   puts parsed[:host]
	   puts parsed[:uri]
	   puts parsed[:referrer]
	   puts parsed[:request_body_len]
	   puts parsed[:response_body_len]
	   puts parsed[:status_code]
	   puts parsed[:status_msg]
	   puts parsed[:info_code]
	   puts parsed[:info_msg]
	   puts parsed[:filename]
	   puts parsed[:tags]
	   puts parsed[:username]
	   puts parsed[:password]
	   puts parsed[:proxied]
	   puts parsed[:mime_type]
	   puts parsed[:md5]
	   puts parsed[:extraction_file]
	end

