;; *************** ScriptTables.asm ***************
;; Script link export. Saturday, April 18, 2026 1:20:47 AM
ScriptAddressLo:
	.db #<Script00, #<Script01, #<Script02, #<Script03, #<Script04, #<Script05, #<Script06, #<Script07, #<Script08
ScriptAddressHi:
	.db #>Script00, #>Script01, #>Script02, #>Script03, #>Script04, #>Script05, #>Script06, #>Script07, #>Script08

TargetScriptBank:
	.db #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1

;;=======================PRESSED=======================
DefinedInputs_Pressed:
	.db #%00100000, #%10000000, #%00010000, #%01000000, #%00000001

DefinedScriptGameStates_Pressed:
	.db #$00, #$00, #$00, #$00, #$00

DefinedTargetObjects_Pressed:
	.db #$00, #$00, #$00, #$00, #$00

DefinedTargetController_Pressed:
	.db #$00, #$00, #$00, #$00, #$00

TargetState_Pressed:
	.db #$00, #$00, #$00, #$00, #$00

DefinedTargetScripts_Pressed:
	.db #$02, #$02, #$02, #$02, #$01

;;=======================RELEASE=======================
DefinedInputs_Released:
	.db #%10000000, #%01000000, #%00010000, #%00100000, #%01000000, #%00010000, #%10000000, #%00100000

DefinedScriptGameStates_Released:
	.db #$00, #$00, #$00, #$00, #$00, #$00, #$00, #$00

DefinedTargetObjects_Released:
	.db #$00, #$00, #$00, #$00, #$00, #$00, #$00, #$00

DefinedTargetController_Released:
	.db #$00, #$00, #$00, #$00, #$00, #$00, #$00, #$00

TargetState_Released:
	.db #$00, #$00, #$00, #$00, #$00, #$00, #$00, #$00

DefinedTargetScripts_Released:
	.db #$03, #$03, #$03, #$03, #$08, #$08, #$08, #$08

;;=======================HOLD=======================
DefinedInputs_Held:
	.db #%01000000, #%00010000, #%10000000, #%00100000

DefinedScriptGameStates_Held:
	.db #$00, #$00, #$00, #$00

DefinedTargetObjects_Held:
	.db #$00, #$00, #$00, #$00

DefinedTargetController_Held:
	.db #$00, #$00, #$00, #$00

TargetState_Held:
	.db #$00, #$00, #$00, #$00

DefinedTargetScripts_Held:
	.db #$05, #$07, #$06, #$04

