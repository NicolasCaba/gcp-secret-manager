resource "google_secret_manager_secret_version" "secret-version" {
  secret = google_secret_manager_secret.secret.id
  secret_data = <<EOF
  {
    "vpc_id": "${data.google_compute_network.vpc.id}",
    "vpc_name": "${data.google_compute_network.vpc.name}",
    "subnetwork_public_1_id": "${data.google_compute_subnetwork.subnetworks_public["subnetwork_public_1"].id}",
    "subnetwork_public_1_name": "${data.google_compute_subnetwork.subnetworks_public["subnetwork_public_1"].name}",
    "subnetwork_public_2_id": "${data.google_compute_subnetwork.subnetworks_public["subnetwork_public_2"].id}",
    "subnetwork_public_2_name": "${data.google_compute_subnetwork.subnetworks_public["subnetwork_public_2"].name}",
    "subnetwork_public_3_id": "${data.google_compute_subnetwork.subnetworks_public["subnetwork_public_3"].id}",
    "subnetwork_public_3_name": "${data.google_compute_subnetwork.subnetworks_public["subnetwork_public_3"].name}",
    "subnetwork_private_4_id": "${data.google_compute_subnetwork.subnetworks_private["subnetwork_private_4"].id}",
    "subnetwork_private_4_name": "${data.google_compute_subnetwork.subnetworks_private["subnetwork_private_4"].name}",
    "subnetwork_private_5_id": "${data.google_compute_subnetwork.subnetworks_private["subnetwork_private_5"].id}",
    "subnetwork_private_5_name": "${data.google_compute_subnetwork.subnetworks_private["subnetwork_private_5"].name}",
    "subnetwork_private_6_id": "${data.google_compute_subnetwork.subnetworks_private["subnetwork_private_6"].id}",
    "subnetwork_private_6_name": "${data.google_compute_subnetwork.subnetworks_private["subnetwork_private_6"].name}"
  }
  EOF

}