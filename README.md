# Jnomad ![Build Status](https://travis-ci.org/joshpmcghee/jnomad.svg?branch=master)
A Swiss army knife gem for the Hashicorp Nomad job scheduler.

```bash
$ gem install jnomad
```

## Jnomad::Client
A simple API client for Nomad.

```ruby
require 'jnomad'

client = Jnomad::Client.new

client.agent_info

client.jobs

client.drain("<ID>", true)
```

## Jnomad::DSL
A DSL for defining Nomad Jobs that compiles to JSON.

```ruby
require 'jnomad'

job do
  name "example"
  region "global"
  type "batch"
  meta "environment", "production"
  priority 50
  datacenters "dc1", "dc2"

  task_group do
    name "cache"
    count 1

    task do
      name "redis"
      driver "docker"
      user "redis"

      config "image", "redis:latest"
      config "port_map", [
        {
          "db": 6379
        }
      ]

      env "FOO", "bar"

      resources do
        cpu 500
        disk 1024
        memory 4096

        network do |n|
          reserved_port "redis", 6379
          mbits 10
        end
      end
    end
  end
end
```

## Contributing
Contributions are very welcome, especially from those of you that enjoy writing test coverage.
