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
    "rubies" => [ "2.0.0-p451" ],
    "global" => "2.0.0-p451",
    "gems" => {
      "2.0.0-p451" => [
        { "name" => "bundler", "version" => "1.3.5" },
      ]
    }
  }
})
