################################################
# Création d'une page de démarage pour
# le navigateur
################################################

# main
index.html: x-header.tmp x-body.tmp header4-foot.tpl
	@cat -s $^ > $@

x-header.tmp: header1.tpl header2-css.tpl header3.tpl
	@cat -s $^ > $@

SOURCE1 = a1.src b1.src c1.src d1.src
SOURCE2 = a2.src b2.src c2.src d2.src
SOURCE3 = a3.src b3.src c3.src d3.src
SPACER = echo '<hr class="spaceur" />'
x-body.tmp: $(SOURCE1) $(SOURCE2) $(SOURCE3)
	@{ \
	   cat -s $(SOURCE1) ; \
	   $(SPACER) ; \
	   cat -s $(SOURCE2) ; \
	   $(SPACER) ; \
	   cat -s $(SOURCE3) ; \
	} > $@

