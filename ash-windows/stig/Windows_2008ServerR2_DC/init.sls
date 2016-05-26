SV-71667r1_rule-Windows Error Reporting service must be enabled:
  service.enabled:
    - name: WerSvc

SV-71667r1_rule-Windows Error Reporting service must be running:
  service.running:
    - name: WerSvc
    - require:
      - service: SV-71667r1_rule-Windows Error Reporting service must be enabled

CCE-24365-9-Smart Card Removal Policy service must be enabled:
  service.enabled:
    - name: SCPolicySvc

{# vdata: [] is an empty list in python -- to clear a Multi-Sz key, set it to an empty list #}
CCE-10913-2-Disable optional subsystems:
  reg.present:
    - name: HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\SubSystems
    - vname: Optional
    - vdata: []
    - vtype: REG_MULTI_SZ
    - reflection: False
