package aap_policy_examples

import rego.v1

# Guarantee a defined boolean result if rules don't match
default allow = false

# Define your policy evaluation logic
allow := false {
    # Conditions that trigger denial
    true
}

# Supply violation messages for AAP logs
violations := ["No job execution is allowed"]