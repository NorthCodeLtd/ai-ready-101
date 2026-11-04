# AI-Ready 101

The development basics behind the AI-Ready trainings, one slide per topic:
the terminal, Git, GitHub, GitHub flow, Node.js & npm, testing levels, CI/CD
with GitHub Actions, Docker, Azure Container Registry, Azure Container Apps,
infrastructure as code (Bicep), secrets & environments, and working with a
coding agent.

It is for participants who are new to software development. The AI-Ready
Academy setup email links to it for participants who registered as
**Beginner**.

**Read it:** https://northcodeltd.github.io/ai-ready-101/ (PDF:
https://northcodeltd.github.io/ai-ready-101/ai-ready-101.pdf)

## Editing

The deck is [`slides.md`](slides.md), written in [Marp](https://marp.app/)
with the NorthCode theme in [`assets/`](assets/). Keep it to **one slide per
topic**: what it is, why it matters, where you meet it in the training, and at
most a couple of example commands.

```bash
./scripts/build.sh     # builds _site/index.html and _site/ai-ready-101.pdf
```

Every push to `main` builds and publishes the site to GitHub Pages
(`.github/workflows/pages.yml`).

## License

© 2026 NorthCode Oy, [CC BY-NC 4.0](LICENSE). Fonts and logos are licensed
separately – see [`LICENSE`](LICENSE).
