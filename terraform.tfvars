account_id = 4043696
api_key    = "NRAK-S0D6RKUBGBH7CJ6TAT6ALATUCSJ"

# // First Dashboard

dashboard_configs-1 = {
  "dashboard1" = {
    name        = "Nr-Dashboard-1"
    permissions = "public_read_only"
    page = {
      name = "Page-1"
      widget_billboard = {
        title  = "Requests per minute."
        row    = 1
        column = 1
        width  = 3
        height = 3
        nrql_query = {
          query = "FROM Transaction SELECT rate(count(*), 1 minute)"
        }
      }
      widget_bar = {
        title  = "Average transaction duration, by application"
        row    = 1
        column = 4
        width  = 3
        height = 3
        nrql_query = {
          query = "FROM Transaction SELECT average(duration) FACET appName"
        }
      }
      widget_line = {
        title  = "Average transaction duration and the request per minute, by application"
        row    = 1
        column = 7
        width  = 3
        height = 3
        nrql_query = {
          query = "FROM Transaction SELECT max(duration) as 'max duration' where httpResponseCode = '504' timeseries since 5 minutes ago"
        }
      }
    }
  }
}

// Second Dashboad 
dashboard_configs-2 = {
  "dashboard2" = {
    name        = "Nr-Dashboard-2"
    permissions = "public_read_only"
    page = {
      name = "Page-1"
      widget_billboard = {
        title  = "Requests per minute."
        row    = 1
        column = 1
        width  = 3
        height = 3
        nrql_query = {
          query = "FROM Transaction SELECT rate(count(*), 1 minute)"
        }
      }
      widget_bar = {
        title  = "Average transaction duration, by application"
        row    = 1
        column = 4
        width  = 3
        height = 3
        nrql_query = {
          query = "FROM Transaction SELECT average(duration) FACET appName"
        }
      }
      widget_line = {
        title  = "Average transaction duration and the request per minute, by application"
        row    = 1
        column = 7
        width  = 3
        height = 3
        nrql_query = {
          query = "FROM Transaction SELECT max(duration) as 'max duration' where httpResponseCode = '504' timeseries since 5 minutes ago"
        }
      }
    }
  }
}
