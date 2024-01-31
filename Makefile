lint: .ylint .alint 

.alint: */*.yml
	ansible-lint --config-file=.config/ansible-lint.yml
	@touch $@

.ylint: */*.yml
	yamllint --config-file=.config/yamllint .
	@touch $@

push: lint
	@mkdir -p /mnt/hgfs/shared/ansible-role-util-security
	rsync -a .config .gitignore [A-z]* /mnt/hgfs/shared/ansible-role-util-security

.PHONY: clean
clean:
	@/bin/rm -f .alint .pylint .ylint
