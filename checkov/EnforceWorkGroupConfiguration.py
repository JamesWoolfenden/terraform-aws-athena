from checkov.terraform.checks.resource.base_resource_value_check import BaseResourceValueCheck
from checkov.common.models.enums import CheckCategories


class EnforceWorkGroupConfiguration(BaseResourceValueCheck):
    def __init__(self):
        name = "Athena Workgroup should enforce configuration to prevent client disabling encryption"
        id = "CKV_AWS_999"
        supported_resources = ['aws_athena_workgroup']
        categories = [CheckCategories.BACKUP_AND_RECOVERY]
        super().__init__(name=name, id=id, categories=categories, supported_resources=supported_resources)

    def get_inspected_key(self):
        return "configuration/[0]/enforce_workgroup_configuration"


scanner = EnforceWorkGroupConfiguration()
