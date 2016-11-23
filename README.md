# Humanize API

The Humanize API stores anonymous responses to pre-EE/post-EE session surveys with demographics tied to them.

The API root URL is located at `https://humanize-api.herokuapp.com/api/v1`.

# Resources

Documentation for various API resources can be found separately in the following locations:

* [Companies](#companies)
* Sessions
* Responders
* Responses

## Companies

**Fetch all companies**

```
GET https://humanize-api.herokuapp.com/api/v1/companies
```

Example Response:

```json
// 20161122201059
// https://humanize-api.herokuapp.com/api/v1/companies

{
  "status": "SUCCESS",
  "message": "Loaded all companies",
  "data": [
    {
      "id": 1,
      "name": "Bloopr",
      "created_at": "2016-11-11T16:20:39.492Z",
      "updated_at": "2016-11-11T16:20:39.492Z"
    },
    {
      "id": 2,
      "name": "TripKarma",
      "created_at": "2016-11-11T16:20:40.492Z",
      "updated_at": "2016-11-11T16:20:40.492Z"
    }
  ]
}
```

**Fetch a specific company**

```
GET https://humanize-api.herokuapp.com/api/v1/companies/company_id
```

Example Response:

```json
// 20161122201228
// https://humanize-api.herokuapp.com/api/v1/companies/1

{
  "id": 1,
  "name": "Bloopr",
  "created_at": "2016-11-11T16:20:39.492Z",
  "updated_at": "2016-11-11T16:20:39.492Z"
}
```


## Sessions

**Fetch all sessions**

```
GET https://humanize-api.herokuapp.com/api/v1/companies/company_id/sessions
```

Example Response:

```json
// 20161122201333
// https://humanize-api.herokuapp.com/api/v1/companies/1/sessions

{
  "status": "SUCCESS",
  "message": "Loaded all sessions",
  "data": [
    {
      "id": 1,
      "date": "2016-10-21",
      "topic": "Teamwork and 360° Feedback",
      "content": "Bloop",
      "company_id": 1,
      "created_at": "2016-11-11T16:20:39.523Z",
      "updated_at": "2016-11-11T16:20:39.523Z"
    },
    {
      "id": 2,
      "date": "2016-10-28",
      "topic": "Inner Critic",
      "content": "Bloop",
      "company_id": 1,
      "created_at": "2016-11-11T16:20:39.530Z",
      "updated_at": "2016-11-11T16:20:39.530Z"
    },
    {
      "id": 3,
      "date": "2016-11-04",
      "topic": "Difficult Conversations",
      "content": "Bloop",
      "company_id": 1,
      "created_at": "2016-11-11T16:20:39.538Z",
      "updated_at": "2016-11-11T16:20:39.538Z"
    },
    {
      "id": 4,
      "date": "2016-11-11",
      "topic": "Allyship",
      "content": "Bloop",
      "company_id": 1,
      "created_at": "2016-11-11T16:20:39.544Z",
      "updated_at": "2016-11-11T16:20:39.544Z"
    }
  ]
}
```

**Fetch a specific session**

```
GET https://humanize-api.herokuapp.com/api/v1/companies/company_id/sessions/session_id
```

Example Response:

```json
// 20161122201344
// https://humanize-api.herokuapp.com/api/v1/companies/1/sessions/4

{
  "id": 4,
  "date": "2016-11-11",
  "topic": "Allyship",
  "content": "Bloop",
  "company_id": 1,
  "created_at": "2016-11-11T16:20:39.544Z",
  "updated_at": "2016-11-11T16:20:39.544Z"
}
```

## Responders

**Fetch responders by session**

```
GET https://humanize-api.herokuapp.com/api/v1/companies/company_id/sessions/session_id/responders
```

Example Response:

```json
// 20161122201418
// https://humanize-api.herokuapp.com/api/v1/companies/1/sessions/4/responders

{
  "url": "/api/v1/companies/1/sessions/4/responders",
  "data": [
    {
      "id": 1,
      "age": 20,
      "position": "C-Level",
      "gender": "Agender",
      "before": true,
      "session_id": 4,
      "created_at": "2016-11-11T16:20:39.572Z",
      "updated_at": "2016-11-11T16:20:39.572Z",
      "responses": [
        {
          "id": 3,
          "value": 5,
          "responder_id": 1,
          "question_id": 3,
          "created_at": "2016-11-11T16:20:40.705Z",
          "updated_at": "2016-11-11T16:20:40.705Z"
        },
        {
          "id": 2,
          "value": 4,
          "responder_id": 1,
          "question_id": 2,
          "created_at": "2016-11-11T16:20:40.699Z",
          "updated_at": "2016-11-11T16:20:40.699Z"
        },
        {
          "id": 1,
          "value": 3,
          "responder_id": 1,
          "question_id": 1,
          "created_at": "2016-11-11T16:20:40.693Z",
          "updated_at": "2016-11-11T16:20:40.693Z"
        }
      ]
    }
  ]
}
```

**Fetch a specific subset of responders**

Example Query:

```
GET https://humanize-api.herokuapp.com/api/v1/companies/company_id/sessions/session_id/responders?before=true&gender=female&age_group=2&position=Senior
```

Parameters (note that all parameters are optional):

| Attributes | Type    | Description                                                                    |
|------------|---------|--------------------------------------------------------------------------------|
| before     | boolean | Filter responders by whether they were pre-survey or post-survey responders    |
| gender     | string  | The gender of the responders                                                   |
| age_group  | integer | The age group of the responders (1 is 18-25, 2 is 26-40, 3 is 41-65, 4 is 65+) |
| position   | string  | The position of the responders (C-Level, Senior, Manager, Junior)              |

## Responses

**Fetch responses by value**

```
GET https://humanize-api.herokuapp.com/api/v1/responses_by_value?value=1
```
