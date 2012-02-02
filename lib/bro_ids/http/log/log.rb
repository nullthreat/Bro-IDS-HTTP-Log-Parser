require "bro_ids/http/log/version"

module BroIds
  module Http
    module Log
      def self.parse(filename, &block)
        parse_file(filename, &block)
      end

      private
        def self.parse_line(line)
          m =  line.split(' ')
          if m
          {:timestamp           => m[0],
           :uid                 => m[1],
           :id_orig_h           => m[2],
           :id_orig_p           => m[3],
           :id_resp_h           => m[4],
           :id_resp_p           => m[5],
           :trans_depth         => m[6],
           :method              => m[7],
           :host                => m[8],
           :uri                 => m[9],
           :referrer            => m[10],
           :request_body_len    => m[11],
           :response_body_len   => m[12],
           :status_code         => m[13],
           :status_msg          => m[14],
           :info_code           => m[15],
           :info_msg            => m[16],
           :filename            => m[17],
           :tags                => m[18],
           :username            => m[19],
           :password            => m[20],
           :proxied             => m[21],
           :mime_type           => m[22],
           :md5                 => m[23],
           :extraction_file     => m[24]}
          else
          {}
        end
      end

      def self.parse_file(filename, &block)
        File.foreach(filename) do |line|
          unless line =~ /^\#/
            parsed = parse_line(line)
            yield parsed
          end
        end
      end
    end
  end
end

