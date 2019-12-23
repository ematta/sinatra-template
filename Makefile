SHELL = /bin/bash


.PHONY: check
check: install rubocop rufo

.PHONY: destroy
	@gem list | cut -d" " -f1 | xargs gem uninstall -aIx

.PHONY: install
install:
	@bundle install

.PHONY: migration
migration:
	@bundle exec sequel -m db/migrations ${DATABASE_URL}

.PHONY: rubocop
rubocop:
	@bundle exec rubocop -a

.PHONY: rufo
rufo:
	@bundle exec rufo .

.PHONY: serve
serve:
	@bundle exec shotgun