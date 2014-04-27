name "ruby"
description "Configure Ruby environment"
run_list(
  "recipe[yum::epel]",
  "recipe[ruby_build]",
  "recipe[rbenv::system]"
)
default_attributes({
  "rbenv" => {
    "rubies" => [ "2.1.1" ],
    "global" => "2.1.1",
    "gems" => {
      "2.1.1" => [
        { "name" => "bundler", "version" => "1.6.1" },
      ]
    }
  }
})
