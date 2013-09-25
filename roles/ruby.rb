name "ruby"
description "Configure Ruby environment"
run_list(
  # TODO support ubuntu
  "recipe[yum::epel]",
  "recipe[ruby_build]",
  "recipe[rbenv::system]"
)
default_attributes({
  "rbenv" => {
    "rubies" => [ "1.9.3-p392" ],
    "global" => "1.9.3-p392",
    "gems" => {
      "1.9.3-p392" => [
        { "name" => "bundler", "version" => "1.3.5" },
        { "name" => "rails" },
        { "name" => "sqlite3", "version" => "1.3.7" }
      ]
    }
  }
})
