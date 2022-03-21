# terraform-aws-athena

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-athena/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-athena)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-athena.svg)](https://github.com/JamesWoolfenden/terraform-aws-athena/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-aws-athena.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-aws-athena/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-aws-athena/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-athena&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-aws-athena/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-athena&benchmark=INFRASTRUCTURE+SECURITY)

---

Basic Terraform module to implement Athena.

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

This is a very basic example.

![alt text](./diagram/athena.png)

Include this as a module in your existing Terraform code - _module.athena.tf_:

```terraform
module "athena" {
  source      = "JamesWoolfenden/athena/aws"
  version     = "0.1.2"
  common_tags = var.common_tags
  kms_key_arn = var.kms_key_arn
}
```

## IAM Permissions

```json
TBD
```

## IAC comparison

The makefile in the example runs 4 of the main IAC SAST tools:

- Checkov
- TFSec
- Terrascan
- Kics

You can run these as part of the validate scripts contained here and all 4 will output to the **output** folder.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.36.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_athena_database.examplea](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/athena_database) | resource |
| [aws_athena_workgroup.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/athena_workgroup) | resource |
| [aws_s3_bucket.examplea](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_public_access_block.examplea](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_s3_bucket_server_side_encryption_configuration.examplea](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | n/a | `string` | n/a | yes |
| <a name="input_common_tags"></a> [common\_tags](#input\_common\_tags) | This is to help you add tags to your cloud objects | `map(any)` | n/a | yes |
| <a name="input_encryption_option"></a> [encryption\_option](#input\_encryption\_option) | (optional) describe your variable | `string` | `"SSE_KMS"` | no |
| <a name="input_kms_key_arn"></a> [kms\_key\_arn](#input\_kms\_key\_arn) | The ARN of your KMS key in AWS | `string` | n/a | yes |
| <a name="input_workgroup_name"></a> [workgroup\_name](#input\_workgroup\_name) | n/a | `string` | `"examplea"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket"></a> [bucket](#output\_bucket) | n/a |
| <a name="output_database"></a> [database](#output\_database) | n/a |
| <a name="output_workgroup"></a> [workgroup](#output\_workgroup) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

- [terraform-aws-s3](https://github.com/jameswoolfenden/terraform-aws-s3) - S3 buckets

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-aws-athena/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-aws-athena/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2022 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-athena&url=https://github.com/JamesWoolfenden/terraform-aws-athena
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-athena&url=https://github.com/JamesWoolfenden/terraform-aws-athena
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-aws-athena
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-aws-athena
[share_email]: mailto:?subject=terraform-aws-athena&body=https://github.com/JamesWoolfenden/terraform-aws-athena

Addresses:
<https://github.com/bridgecrewio/checkov/issues/150>
<https://github.com/bridgecrewio/checkov/issues/149>
<https://github.com/bridgecrewio/checkov/issues/148>
