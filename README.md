# Sentinel-Onboarding
resources for quick sentinel deployments and configurations

## Complete Sentinel Deployment Instructions

1. Deploy lighthouse using the templates and the script found in the [5Q templates]() directory.

2. Create a new resource group for the Sentinel workspace
    - using naming convention:  rg-5q-sentinel
    
3. Deploy log analytics
    - using naming convention: 5Q-LogAnalytics-Sentinel

4. Add Sentinel to the Log analytics workspace
    - using the search box or an ARM template
    