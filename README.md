## pre-commit hooks
This repository contains the `anbox-cloud-docs-links-checker` pre-commit hook.

This hook will find Anbox Cloud links in the documentation and warn that they should point to the corresponding Discourse links.

To skip this pre-commit hook when committing changes, use:

```
$ SKIP=anbox-cloud-docs-links-checker git commit ...
```

