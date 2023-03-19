lint: .ylint .alint 

.alint: */*.yml
	ansible-lint --config-file=.config/ansible-lint.yml
	@touch $@

.pylint: files/*.py
	flake8 --ignore=E501 files/*.py
	black files/*.py
	pylint files/*.py
	@touch $@

.ylint: */*.yml
	yamllint --config-file=.config/yamllint .
	@touch $@

# --------------------------------

clean:
	@/bin/rm -f .alint .pylint .ylint
