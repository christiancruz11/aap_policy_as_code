<!-- DOCSIBLE START -->

# 📃 Role overview

## ocp_deploy_opa_policies





| Field                | Value           |
|--------------------- |-----------------|
| Readme update        | 2026/08/15 |








### Defaults

**These are static variables with lower priority**

#### File: defaults/main.yml

| Var          | Type         | Value       |
|--------------|--------------|-------------|
| [opa_route_host](defaults/main.yml#L3)   | str | `opa-opa-server.apps.cluster-h8c5q-1.dyn.redhatworkshops.io` |    
| [opa_proto](defaults/main.yml#L4)   | str | `http` |    
| [opa_url](defaults/main.yml#L7)   | str | `{{ opa_proto }}://{{ opa_route_host }}` |    
| [opa_policies_source_dir](defaults/main.yml#L10)   | str | `{{ playbook_dir }}/../aap_policy_examples` |    


### Vars

**These are variables with higher priority**
#### File: vars/main.yml

| Var          | Type         | Value       |
|--------------|--------------|-------------|
| [opa_policy_extension](vars/main.yml#L2)   | str | `.rego` |    


### Tasks


#### File: tasks/main.yml

| Name | Module | Has Conditions |
| ---- | ------ | -------------- |
| Find all .rego policy files in {{ opa_policies_source_dir }} | ansible.builtin.find | False |
| Fail if no .rego files were found | ansible.builtin.fail | True |
| Upload .rego policy files to OPA REST API | ansible.builtin.uri | False |
| Display policy deployment results | ansible.builtin.debug | False |









#### Dependencies

No dependencies specified.
<!-- DOCSIBLE END -->
