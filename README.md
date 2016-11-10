# Humanize API

## API REST Requests

The API root URL is located at https://humanize-api.herokuapp.com/api/v1

Generally speaking, ping the URL of the resource you're requesting along with the query parameters.

### API Requests by Resource

#### Companies
* Fetch all companies
`https://humanize-api.herokuapp.com/api/v1/companies`
* Fetch a specific company
`https://humanize-api.herokuapp.com/api/v1/companies/company_id`

#### Sessions
* Fetch all sessions
`https://humanize-api.herokuapp.com/api/v1/companies/company_id/sessions`
* Fetch a specific session
`https://humanize-api.herokuapp.com/api/v1/companies/company_id/sessions/session_id`

#### Responders
* Fetch responders by session
`https://humanize-api.herokuapp.com/api/v1/companies/company_id/sessions/session_id/responders`
* Fetch responder by session for the pre-session survey
`https://humanize-api.herokuapp.com/api/v1/companies/company_id/sessions/session_id/responders?before=true`
* Fetch responder by session for the post-session survey
`https://humanize-api.herokuapp.com/api/v1/companies/company_id/sessions/session_id/responders?before=false`

#### Responses
* Fetch all responses
`https://humanize-api.herokuapp.com/api/v1`
* Fetch responses by value
`https://humanize-api.herokuapp.com/api/v1/responses_by_value?value=1`

