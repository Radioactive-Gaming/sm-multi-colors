SPCOMP?=spcomp64
OUTDIR?=build/

SCRIPTING:=addons/sourcemod/scripting/

$(OUTDIR)multicolors.spx: $(SCRIPTING)include/multicolors/colors.inc
$(OUTDIR)multicolors.spx: $(SCRIPTING)include/multicolors/morecolors.inc
$(OUTDIR)multicolors.spx: $(SCRIPTING)include/multicolors.inc
$(OUTDIR)multicolors.spx: $(SCRIPTING)multicolors.sp
	$(SPCOMP) "--output=$@" "$<" \
		"--include=$(SCRIPTING)include" \
		--warnings-as-errors

