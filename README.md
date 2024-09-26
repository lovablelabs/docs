Docs for gptengineer.app
========================

Built with [MkDocs](https://www.mkdocs.org/) and [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/).

Configuration happens in `mkdocs.yml`. You can find an extensive example [here](https://github.com/squidfunk/mkdocs-material/blob/master/mkdocs.yml).

Docs for the docs:
 - https://mkdocs.org
 - https://squidfunk.github.io/mkdocs-material/

## Build

```bash
make install
make build
# or, to serve locally
make dev
```

## What do we need to document?

We want to keep the documentation as simple as possible.

 - The documentation should **not** be necessary for users to understand how to use gptengineer.app. 
   - If users need to read the documentation to understand how to use the app, then the app is not intuitive enough.
 - The documentation should serve as a complement to the app.
   - Giving users clarity about what it can and cannot do.
 - The documentation could also contain content aimed at developers/power users.
   - Which might confuse non-technical users if it were included in the app itself.
 - Something to link to when people have questions.
 - Explain status of upcoming/requested features, like backend etc.

## Contributing

We welcome community contributions to improve the documentation. If you would like to contribute, please refer to our [Contributing guide](./CONTRIBUTING.md) for instructions on how to get started.


## Deploy

The documentation is automatically deployed to Netlify from GitHub Actions when changes to the `docs/` directory are made on the `main` branch. (this is due to Netlify not supporting Python 3.8+ in their build workers)
