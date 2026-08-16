package aap_policy_examples

import rego.v1

# Standard AAP entrypoint
default allow := false

# Explicitly define 'allow' using Rego v1 syntax
allow := false if {
    true
}

# Return violations payload for AAP logs
violations := ["No job execution is allowed"]