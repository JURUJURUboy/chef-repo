name "ruby"
description "Configure Ruby environment"
run_list(
  "recipe[git]",
  "recipe[yum-epel]",
  "recipe[ruby_build]",
  "recipe[rbenv::system]"
)
default_attributes({
  "rbenv" => {
    "rubies" => [ "2.2.2" ],
    "global" => "2.2.2",
    "gems" => {
      "2.2.2" => [
        { "name" => "bundler", "version" => "1.9.4" },
        { "name" => "rails",   "version" => "4.2.1" },
        { "name" => "unicorn", "version" => "4.8.3" },
      ]
    }
  }
})
