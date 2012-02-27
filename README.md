# What it is

Middleware that fixes problem when clients sends only one
content-type accept header with quality parameter.

Example:
`Accept: */*;q=0.9`

This middleware strips quality parameter and prevents Rails from
MissingTemplate exception.

# How to use

Place it to lib/middleware and add `config.middleware.use "Middleware::AcceptHeaderFix"` to your config/application.rb
