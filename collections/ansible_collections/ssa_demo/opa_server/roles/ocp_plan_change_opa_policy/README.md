<!-- DOCSIBLE START -->

# 📃 Role overview

## ocp_plan_change_opa_policy





| Field                | Value           |
|--------------------- |-----------------|
| Readme update        | 2026/08/15 |








### Defaults

**These are static variables with lower priority**

#### File: defaults/main.yml

| Var          | Type         | Value       |
|--------------|--------------|-------------|
| [opa_route_host](defaults/main.yml#L9)   | str | `opa-opa-server.apps.cluster-h8c5q-1.dyn.redhatworkshops.io` |    
| [opa_policy_id](defaults/main.yml#L10)   | str | `plan_change_window` |    
| [plan_change_start_hour](defaults/main.yml#L13)   | int | `12` |    
| [plan_change_end_hour](defaults/main.yml#L14)   | int | `7` |    
| [policy_files](defaults/main.yml#L17)   | list | `[]` |    
| [policy_files.**0**](defaults/main.yml#L18)   | dict | `{}` |    
| [policy_files.0.**name**](defaults/main.yml#L18)   | str | `plan_change_window` |    
| [policy_files.0.**template**](defaults/main.yml#L19)   | str | `plan_change_window.rego.j2` |    
| [policy_files.0.**dest_file**](defaults/main.yml#L20)   | str | `plan_change_window.rego` |    


### Vars

**These are variables with higher priority**
#### File: vars/main.yml

| Var          | Type         | Value       |
|--------------|--------------|-------------|
| [opa_policy_api_path](vars/main.yml#L6)   | str | `/v1/policies` |    
| [opa_http_headers](vars/main.yml#L7)   | dict | `{}` |    
| [opa_http_headers.**Content-Type**](vars/main.yml#L8)   | str | `text/plain` |    
| [opa_expected_http_status](vars/main.yml#L9)   | list | `[]` |    
| [opa_expected_http_status.**0**](vars/main.yml#L10)   | int | `200` |    
| [opa_expected_http_status.**1**](vars/main.yml#L11)   | int | `202` |    


### Tasks


#### File: tasks/main.yml

| Name | Module | Has Conditions |
| ---- | ------ | -------------- |
| Deploy rendered Rego policy to OpenShift OPA REST API | ansible.builtin.uri | False |
| Display policy deployment status | ansible.builtin.debug | True |
| Fetch details for the deployed policy | ansible.builtin.uri | False |
| Show active policy definition ID | ansible.builtin.debug | False |









#### Dependencies

No dependencies specified.
<!-- DOCSIBLE END -->
