/**
* Copyright 2024 Google LLC
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

# [START gke_standard_zonal_multi_zone]
resource "google_container_cluster" "default" {
  name               = "gke-standard-zonal-multi-zone"
  location           = "us-central1-a"
  node_locations     = ["us-central1-b", "us-central1-c"]
  initial_node_count = 2
}
# [END gke_standard_zonal_multi_zone]
