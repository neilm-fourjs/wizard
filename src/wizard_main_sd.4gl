-- Single Dialog Wizard Demo
IMPORT FGL wizard_ui_sd
IMPORT FGL wizard_common
GLOBALS "wizard_glob.inc"
MAIN
  CALL wizard_common.init_prog("wizard_sd", "WizardSD", "Wizard - Single Dialog")
  CALL wizard_ui_sd.wizard_ui_sd("combo")
END MAIN
