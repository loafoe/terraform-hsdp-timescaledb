# HSDP TimescaleDB module

This module deploys TimescaleDB on Container Host. Connect to it from your
Cloud foundry application or other platform service.

<!--- BEGIN_TF_DOCS --->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_hsdp"></a> [hsdp](#requirement\_hsdp) | >= 0.30.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hsdp"></a> [hsdp](#provider\_hsdp) | 0.30.10 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.1.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [hsdp_container_host.timescaledb](https://registry.terraform.io/providers/philips-software/hsdp/latest/docs/resources/container_host) | resource |
| [hsdp_container_host_exec.server](https://registry.terraform.io/providers/philips-software/hsdp/latest/docs/resources/container_host_exec) | resource |
| [random_password.root](https://registry.terraform.io/providers/random/latest/docs/resources/password) | resource |
| [random_pet.deploy](https://registry.terraform.io/providers/random/latest/docs/resources/pet) | resource |
| [hsdp_config.cf](https://registry.terraform.io/providers/philips-software/hsdp/latest/docs/data-sources/config) | data source |
| [hsdp_config.logging](https://registry.terraform.io/providers/philips-software/hsdp/latest/docs/data-sources/config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_agent"></a> [agent](#input\_agent) | Use SSH agent for authentication | `bool` | `false` | no |
| <a name="input_cartel_secret"></a> [cartel\_secret](#input\_cartel\_secret) | The Cartel secret to use for autoscaling | `string` | `""` | no |
| <a name="input_cartel_token"></a> [cartel\_token](#input\_cartel\_token) | The Cartel token to use for autoscaling | `string` | `""` | no |
| <a name="input_docker_password"></a> [docker\_password](#input\_docker\_password) | Docker registry password | `string` | `""` | no |
| <a name="input_docker_username"></a> [docker\_username](#input\_docker\_username) | Docker registry username | `string` | `""` | no |
| <a name="input_fluent_bit_image"></a> [fluent\_bit\_image](#input\_fluent\_bit\_image) | Fluent-bit image | `string` | `"philipssoftware/fluent-bit-out-hsdp:latest"` | no |
| <a name="input_hsdp_custom_field"></a> [hsdp\_custom\_field](#input\_hsdp\_custom\_field) | Post structured JSON message to HSDP Logging custom field | `string` | `"true"` | no |
| <a name="input_hsdp_environment"></a> [hsdp\_environment](#input\_hsdp\_environment) | The HSDP environment of the deployment | `string` | `"client-test"` | no |
| <a name="input_hsdp_product_key"></a> [hsdp\_product\_key](#input\_hsdp\_product\_key) | HSDP Logging product key | `string` | `""` | no |
| <a name="input_hsdp_region"></a> [hsdp\_region](#input\_hsdp\_region) | The HSDP region of the deployment | `string` | `"us-east"` | no |
| <a name="input_hsdp_secret_key"></a> [hsdp\_secret\_key](#input\_hsdp\_secret\_key) | HSDP Logging secret key | `string` | `""` | no |
| <a name="input_hsdp_shared_key"></a> [hsdp\_shared\_key](#input\_hsdp\_shared\_key) | HSDP Logging shared key | `string` | `""` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | The instance type to use | `string` | `"t2.medium"` | no |
| <a name="input_name_postfix"></a> [name\_postfix](#input\_name\_postfix) | The postfix string to append to the hostname, prevents namespace clashes | `string` | `""` | no |
| <a name="input_private_key"></a> [private\_key](#input\_private\_key) | Private key for SSH access (should not have a passphrase) | `string` | `""` | no |
| <a name="input_timescaledb_image"></a> [timescaledb\_image](#input\_timescaledb\_image) | The TimescaleDB server image to use | `string` | `"timescale/timescaledb:latest-pg12"` | no |
| <a name="input_user"></a> [user](#input\_user) | LDAP user to use for connections | `string` | n/a | yes |
| <a name="input_user_groups"></a> [user\_groups](#input\_user\_groups) | User groups to assign to cluster | `list(string)` | n/a | yes |
| <a name="input_volume_size"></a> [volume\_size](#input\_volume\_size) | The volume size to use in GB | `number` | `50` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_timescaledb_id"></a> [timescaledb\_id](#output\_timescaledb\_id) | Server ID of TimescaleDB |
| <a name="output_timescaledb_ip"></a> [timescaledb\_ip](#output\_timescaledb\_ip) | Private IP address of TimescaleDB server |
| <a name="output_timescaledb_password"></a> [timescaledb\_password](#output\_timescaledb\_password) | Password |

<!--- END_TF_DOCS --->

# Contact / Getting help

Please post your questions on the HSDP Slack `#terraform` channel

# License

License is MIT

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_hsdp"></a> [hsdp](#requirement\_hsdp) | >= 0.30.0 |
| <a name="requirement_ssh"></a> [ssh](#requirement\_ssh) | >= 2.1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hsdp"></a> [hsdp](#provider\_hsdp) | 0.42.1 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.5.1 |
| <a name="provider_ssh"></a> [ssh](#provider\_ssh) | 2.6.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [hsdp_container_host.timescaledb](https://registry.terraform.io/providers/philips-software/hsdp/latest/docs/resources/container_host) | resource |
| [random_password.root](https://registry.terraform.io/providers/random/latest/docs/resources/password) | resource |
| [random_pet.deploy](https://registry.terraform.io/providers/random/latest/docs/resources/pet) | resource |
| [ssh_resource.server](https://registry.terraform.io/providers/loafoe/ssh/latest/docs/resources/resource) | resource |
| [hsdp_config.cf](https://registry.terraform.io/providers/philips-software/hsdp/latest/docs/data-sources/config) | data source |
| [hsdp_config.gw](https://registry.terraform.io/providers/philips-software/hsdp/latest/docs/data-sources/config) | data source |
| [hsdp_config.logging](https://registry.terraform.io/providers/philips-software/hsdp/latest/docs/data-sources/config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_agent"></a> [agent](#input\_agent) | Use SSH agent for authentication | `bool` | `false` | no |
| <a name="input_cartel_secret"></a> [cartel\_secret](#input\_cartel\_secret) | The Cartel secret to use for autoscaling | `string` | `""` | no |
| <a name="input_cartel_token"></a> [cartel\_token](#input\_cartel\_token) | The Cartel token to use for autoscaling | `string` | `""` | no |
| <a name="input_docker_password"></a> [docker\_password](#input\_docker\_password) | Docker registry password | `string` | `""` | no |
| <a name="input_docker_username"></a> [docker\_username](#input\_docker\_username) | Docker registry username | `string` | `""` | no |
| <a name="input_fluent_bit_image"></a> [fluent\_bit\_image](#input\_fluent\_bit\_image) | Fluent-bit image | `string` | `"philipssoftware/fluent-bit-out-hsdp:latest"` | no |
| <a name="input_hsdp_custom_field"></a> [hsdp\_custom\_field](#input\_hsdp\_custom\_field) | Post structured JSON message to HSDP Logging custom field | `string` | `"true"` | no |
| <a name="input_hsdp_environment"></a> [hsdp\_environment](#input\_hsdp\_environment) | The HSDP environment of the deployment | `string` | `"client-test"` | no |
| <a name="input_hsdp_product_key"></a> [hsdp\_product\_key](#input\_hsdp\_product\_key) | HSDP Logging product key | `string` | `""` | no |
| <a name="input_hsdp_region"></a> [hsdp\_region](#input\_hsdp\_region) | The HSDP region of the deployment | `string` | `"us-east"` | no |
| <a name="input_hsdp_secret_key"></a> [hsdp\_secret\_key](#input\_hsdp\_secret\_key) | HSDP Logging secret key | `string` | `""` | no |
| <a name="input_hsdp_shared_key"></a> [hsdp\_shared\_key](#input\_hsdp\_shared\_key) | HSDP Logging shared key | `string` | `""` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | The instance type to use | `string` | `"t2.medium"` | no |
| <a name="input_name_postfix"></a> [name\_postfix](#input\_name\_postfix) | The postfix string to append to the hostname, prevents namespace clashes | `string` | `""` | no |
| <a name="input_private_key"></a> [private\_key](#input\_private\_key) | Private key for SSH access (should not have a passphrase) | `string` | `""` | no |
| <a name="input_timescaledb_image"></a> [timescaledb\_image](#input\_timescaledb\_image) | The TimescaleDB server image to use | `string` | `"timescale/timescaledb:latest-pg12"` | no |
| <a name="input_user"></a> [user](#input\_user) | LDAP user to use for connections | `string` | n/a | yes |
| <a name="input_user_groups"></a> [user\_groups](#input\_user\_groups) | User groups to assign to cluster | `list(string)` | n/a | yes |
| <a name="input_volume_size"></a> [volume\_size](#input\_volume\_size) | The volume size to use in GB | `number` | `50` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_timescaledb_id"></a> [timescaledb\_id](#output\_timescaledb\_id) | Server ID of TimescaleDB |
| <a name="output_timescaledb_ip"></a> [timescaledb\_ip](#output\_timescaledb\_ip) | Private IP address of TimescaleDB server |
| <a name="output_timescaledb_password"></a> [timescaledb\_password](#output\_timescaledb\_password) | Password |
<!-- END_TF_DOCS -->