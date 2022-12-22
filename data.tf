data "google_service_account" "my_account" {
  account_id = ""
}

# vpc
data "google_compute_network" "vpc" {
  name = "vpc"
}

# public subnetowrks
locals {
  subnetworks_public = {
    subnetwork_public_1 = {
        name = "subnetwork-public-1"
    },
    subnetwork_public_2 = {
        name = "subnetwork-public-2"
    },
    subnetwork_public_3 = {
        name = "subnetwork-public-3"
    }
  }
}

data "google_compute_subnetwork" "subnetworks_public" {
  for_each = local.subnetworks_public
  name = each.value.name
}

# private subnetwork
locals {
  subnetworks_private = {
    subnetwork_private_4 = {
        name = "subnetwork-private-4"
    },
    subnetwork_private_5 = {
        name = "subnetwork-private-5"
    },
    subnetwork_private_6 = {
        name = "subnetwork-private-6"
    }
  }
}

data "google_compute_subnetwork" "subnetworks_private" {
  for_each = local.subnetworks_private
  name = each.value.name
}