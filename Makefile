.PHONY: lint
lint: ## Audit & check styling of all formulae & casks
	brew audit --formula ./Formula/*
	brew audit --cask ./Casks/*
	brew style --formula ./Formula/*
	brew style --cask ./Casks/*

.PHONY: alias
alias: ## Create aliases for latest versions of each formula
	@rm -f ./Aliases/*
	@for file in `fd -d 2 -e .rb --full-path ./Formula | sort -V -r | sort -u -t@ -k1,1`; do \
		name=`echo "$$file" | cut -c 9- | cut -d @ -f 1`; \
		echo "Making alias: $$name -> ../$$file"; \
		ln -s ../$$file Aliases/$$name; \
	done

# https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html

.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-0s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help
