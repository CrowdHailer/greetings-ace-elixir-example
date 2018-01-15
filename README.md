# Greetings

### Simple greetings application to showcase developing web services with [Ace](https://github.com/CrowdHailer/Ace)

**Ace is a featherweight toolkit for developing web applications in Elixir. Similar to Sinatra for Ruby and Flask for Python.**

- [Ace on Hex](https://hex.pm/packages/ace)
- [Documentation for Ace](https://hexdocs.pm/ace)
- [Discuss on slack](https://elixir-lang.slack.com/messages/C56H3TBH8/)

## Getting started

Clone the contents of this repository.

```
git clone git@github.com:CrowdHailer/greetings-ace-elixir-example.git greetings
cd greetings
```

Fetch the dependencies for this project.

```
mix deps.get
```

Start the service, it will start using port `8080`.

```
mix run --no-halt
```

Visit in the browser http://localhost:8080/name/dan.
