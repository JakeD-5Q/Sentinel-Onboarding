@echo off
:: Created 11/16/2021 by Alvaro.Perez@5QCloud.com
::All files must be contained in the same folder.
:: This Script will install via any Push method. 
:: Workspace id must be filled in as well as workspace key.


::  MOM Agent Installer
msiexec /i "%~dp0MOMAgentX64.msi" /qn NOAPM=1 ADD_OPINSIGHTS_WORKSPACE=1 OPINSIGHTS_WORKSPACE_AZURE_CLOUD_TYPE=0 OPINSIGHTS_WORKSPACE_ID="Enter-Workspace-ID" OPINSIGHTS_WORKSPACE_KEY="<Enter-Key>" AcceptEndUserLicenseAgreement=1


:: Pause for 2 minutes
timeout 120

:: Sysmon Installer
msiexec /i "%~dp0sysmon.exe -accepteula -i sysmonconfig-export.xml" /q

::Automatically closes CMD window.
timeout 120
Exit