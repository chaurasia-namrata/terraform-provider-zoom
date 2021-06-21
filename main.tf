terraform {
  required_providers {
    zoomus = {
      version = "1.0.1"
      source  = "chaurasia-namrata/zoomus"
    }
  }
}

provider "zoomus" {
  zoom_api_key    = "[ZOOM_API_KEY]"
  zoom_api_secret = "[ZOOM_API_SECRET]"
}

resource "zoomus_user" "user1" {
   email        = "[EMAIL_ID]"
   first_name   = "[USER_FIRST_NAME]"
   last_name    = "[USER_LAST_NAME]"
   status       = "activate"
   license_type = [INTEGER_VALUE]
   department   = "[USER_DEPARTMENT]"
   job_title    = "[USER_JOB_TITLE]"
   location     = "[USER_LOCATION]"
}
