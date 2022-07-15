# Sentinel-Onboarding

resources for quick sentinel deployments and configurations

## Complete Sentinel Deployment Instructions

1. Deploy lighthouse using the templates and the script found in the [5Q templates](https://github.com/JakeD-5Q/Sentinel-Onboarding/tree/main/Azure%20Lighthouse/5Q%20Templates) directory.

2. Create a new resource group for the Sentinel workspace
    - using naming convention:  rg-5q-sentinel

3. Deploy log analytics
    - using naming convention: 5Q-LogAnalytics-Sentinel

4. Add Sentinel to the Log analytics workspace
    - using the search box or an ARM template

5. Sentinel has now been successfully deployed!

## Sentinel Configuration and Setup

This brief guide will cover the base necessities for functionality, each tenant will look and behave a bit different once the following steps have been completed.

Upon completing the initial deployment, we must add all content and connect data sources.

- Connect Azure Activity logs from the Log Analytics Workspace blade
- Turn on UEBA from the Sentinel Settings (must be global or security admin)
- Give permissions to the resource groups that hold Sentinel Playbooks

### Data connectors

I find it useful to add the data connectors that you can using the Solutions (content hub) because it does more than just connect, often it will automatically perform the steps found in the 'Next steps' tab.

Install the solution/Enable the Data connector for the following sources:

- Azure Active Directory *Check all available logs to be ingested*
- Azure Active Directory Identity Protection
- Azure Activity *Create a remediation task*
- Azure Information Protection
- Microsoft Defender 365 *In the Defender console, enable the 'Advanced Features'*
-- Microsoft Defender for Endpoint

-- Microsoft Defender for Identity

-- Microsoft Defender for Office 365

-- Microsoft Defender for Cloud Apps 
        
*Check Cloud discovery logs*
*Add Microsoft Sentinel as the SIEM under security configurations, configure settings*

-- Microsoft Defender Alert Evidence

-- Threat & Vulnerability Management

- Office 365 *Check Exchange, SharePoint, and Teams*
