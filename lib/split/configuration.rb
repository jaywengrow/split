module Split
  class Configuration
    attr_accessor :robot_regex
    attr_accessor :ignore_ip_addresses
    attr_accessor :db_failover
    attr_accessor :db_failover_on_db_error
    attr_accessor :db_failover_allow_parameter_override
    attr_accessor :allow_multiple_experiments
    attr_accessor :enabled

    def initialize
      @robot_regex = /\b(Baidu|Gigabot|Googlebot|libwww-perl|lwp-trivial|msnbot|SiteUptime|Slurp|WordPress|ZIBB|ZyBorg)\b/i
      @ignore_ip_addresses = []
      @db_failover = false
      @db_failover_on_db_error = proc{|error|} # e.g. use Rails logger here
      @db_failover_allow_parameter_override = false
      @allow_multiple_experiments = false
      @enabled = true
    end
  end
end
