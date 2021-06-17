terraform {
  required_providers {
    zoom = {
      version = "0.2"
      source  = "hashicorp.com/edu/zoom"
    }
  }
}

provider "zoom" { 
  zoom_api_key = "[ZOOM_API_KEY]"
  zoom_api_secret = "[ZOOM_API_SECRET]"
}

resource "zoom_user" "user1" {
   email      = ""
   first_name = ""
   last_name  = ""
   status = "active"
   license_type =   1
   department = ""
   job_title = ""
   location = ""
}
