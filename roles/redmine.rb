name "redmine"
description "Redmine"
run_list(
  "role[ruby]",
  "recipe[redmine]",
)
default_attributes({
  "rbenv" => {
    "gems" => {
      "1.9.3-p392" => [
        { "name" => "rails",   "version" => "3.2.13" },
        { "name" => "unicorn", "version" => "4.6.2"  }
      ]
    }
  },
  "mysql" => {
    "tunable" => {
      "max_connections" => "100",
      "innodb_buffer_pool_size" => "512MB",
      "innodb_log_file_size" => "128MB"
    }
  }
})
