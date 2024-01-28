# vi: ft=make

.PHONY: gen-git-no-yaml
gen-git-no-yaml:
	buf generate https://github.com/george-echo/buf-lock-issue.git#tag=1.0.0,subdir=proto --config proto/buf.yaml --template buf.gen.yaml

.PHONY: gen-git-yaml
gen-git-yaml:
	buf generate https://github.com/george-echo/buf-lock-issue.git#tag=2.0.0,subdir=proto --config proto/buf.yaml --template buf.gen.yaml

.PHONY: gen-local
gen-local:
	buf generate proto --config proto/buf.yaml --template buf.gen.yaml