all:
	@rm -rf src-covered
	@sbin/jscoverage src src-covered
	@COVERAGE=true LISTING=true jessie spec
	@rm -rf src-covered
