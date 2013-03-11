.PHONY: translations

translations:
	-mkdir tmp
	@for f in transifex/*;do dest=`basename $$f .yml`.cson; cp $$f tmp/$$dest; done
	@for f in tmp/*;do dest=`basename $$f .cson`.json; cson2json $$f > translations/$$dest; done
	-rm -rf tmp
