require 'yaml'

module CrashLogger
  def self.log_crash_info(error=$!)
    program_name  = $0
    process_id    = $$
    timestamp     = Time.now.utc.strftime("%Y%m%d-%H%M%S")

    filename = "crash-#{program_name}-#{process_id}-#{timestamp}-.yml"

    error_info                = {}
    error_info["error"]       = error
    error_info["stacktrace"]  = error.backtrace
    error_info["error"]       = ENV.to_h

    File.write(filename, error_info.to_yaml)
    filename
  end
end

at_exit do
  unless $!.nil? || $!.is_a?(SystemExit)
    filename = CrashLogger.log_crash_info
    $stderr.puts "A crash log has been saved to: #{filename}"
  end
end

# Proof of concept

def buggy_method(buggy_weight, horse_count=ENV["HORSE_COUNT"].to_i)
  buggy_weight / horse_count
end

buggy_method(480)
