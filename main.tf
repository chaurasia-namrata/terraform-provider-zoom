terraform {
  required_providers {
    zoom = {
      version = "1.0.1"
      source  = "chaurasia-namrata/zoomus"
    }
  }
}

provider "zoom" { 
  zoom_api_key    = "[ZOOM_API_KEY]"
  zoom_api_secret = "[ZOOM_API_SECRET]"
}

resource "zoom_user" "user1" {
   email        = "[EMAIL_ID]"
   first_name   = "[USER_FIRST_NAME]"
   last_name    = "[USER_LAST_NAME]"
   status       = "activate"
   license_type = [INTEGER_VALUE]
   department   = "[USER_DEPARTMENT]"
   job_title    = "[USER_JOB_TITLE]"
   location     = "[USER_LOCATION]"
}
