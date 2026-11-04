---
marp: true
theme: northcode
paginate: true
title: AI-Ready 101
description: The development basics behind the AI-Ready trainings – one slide per topic
footer: 'AI-Ready 101 · © 2026 NorthCode Oy · CC BY-NC 4.0'
---

<style>
section {
  font-size: 22px;
  padding-top: 70px;
}
section h2 {
  margin-top: 0;
  margin-bottom: 0.5em;
}
section p {
  margin: 0.45em 0;
  line-height: 1.5;
}
section strong {
  color: var(--nc-mint);
  font-weight: 400;
}
/* Same size as body text: brand guideline allows max. 2 text sizes per slide */
section pre {
  margin-top: 0.8em;
  font-size: 1em;
}
/* Title and closing slides: the logo sits in the layout flow (not
   absolutely over it), with clear space below it of more than the height
   of its "N" (~48px at this size) – brand guideline safe area. */
section.lead::before,
section.closing::before {
  position: static;
  transform: none;
  flex: none;
  width: 400px;
  height: 107px; /* the SVG's 866.67 × 231.08 at 400px wide */
  margin-bottom: 64px;
}
section.lead h1,
section.closing h1 {
  margin-top: 0;
}
section code,
section pre code {
  font-size: 1em;
}
/* Readable highlighting on the dark background */
section pre code [class^="hljs-"] {
  color: var(--nc-mint);
}
section pre code .hljs-comment {
  color: #9a9a9a;
}
</style>

<!-- _class: lead -->
<!-- _paginate: false -->

# AI-Ready 101

The development basics behind the AI-Ready trainings
– one slide per topic

---

## The terminal

**What:** a text window where you type commands instead of clicking. PowerShell on Windows, Terminal on macOS and Linux.

**Why it matters:** most developer tools – and your coding agent – work through it. Every command does exactly what it says, and can be repeated.

**In the training:** you run the setup scripts, `git` and `gh` here.

```bash
cd ~/Training      # go into a folder
ls                 # list what is in it
```

---

## Git

**What:** a version history for a folder of code. Every saved step is a *commit* with a message saying why.

**Why it matters:** you can see who changed what and when, try things safely, and go back if something breaks. A *branch* is a separate line of work.

**In the training:** your coding agent commits its work; you read the history.

```bash
git status                      # what has changed
git commit -m "Add login page"  # save a step
```

---

## GitHub

**What:** a website that hosts Git repositories so a team can share them.

**Why it matters:** besides the code it holds *issues* (work to do) and *pull requests* (proposed changes that someone reviews before they are accepted).

**In the training:** your training repository lives here, and you sign in with the GitHub CLI.

```bash
gh auth login     # sign in once
gh repo clone <your-repository-url>
```

---

## GitHub flow

**What:** the simple way of working with GitHub: `main` is always working, and every change goes through its own branch and pull request.

**Why it matters:** each change is small, tested and reviewed before it reaches `main` – by a person, even when an AI wrote it.

**In the training:** branch → commits → pull request → checks pass → review → merge. You decide what gets merged.

---

## Node.js & npm

**What:** Node.js runs JavaScript outside the browser, e.g. a web app's backend. npm installs the libraries (*packages*) a project uses.

**Why it matters:** a project lists its packages in `package.json`, so anyone can install exactly the same set.

**In the training:** the app you build runs on Node.js.

```bash
npm install     # install the project's packages
npm test        # run its tests
```

---

## Testing levels

**What:** code that checks other code works.
- **Unit tests** – one small piece on its own, fast
- **Integration tests** – pieces working together, e.g. with a database
- **Acceptance tests** – the whole app, the way a user uses it

**Why it matters:** tests let you – and your agent – change code with confidence: if they pass, nothing broke.

**In the training:** tests come first, and the agent runs them after every change.

---

## CI/CD with GitHub Actions

**What:** **CI** (continuous integration) builds and tests every change automatically. **CD** (continuous delivery/deployment) ships the tested change to where users can use it.

**Why it matters:** problems show up minutes after a change, not weeks – and releasing becomes routine instead of risky.

**In the training:** GitHub Actions runs a *workflow* (a YAML file in `.github/workflows/`) on every push and pull request, and deploys to Azure.

---

## Docker

**What:** packs an app and everything it needs into an *image*. A running image is a *container*. A `Dockerfile` is the recipe.

**Why it matters:** "works on my machine" becomes "works everywhere" – the same image runs on your laptop, in CI and in the cloud.

**In the training:** your app is built into an image for deployment.

```bash
docker build -t yapster .      # build an image
docker run -p 3000:3000 yapster
```

---

## Azure Container Registry (ACR)

**What:** a private storage place for Docker images in Azure – like GitHub, but for images instead of code.

**Why it matters:** CI builds an image once and *pushes* it to the registry; the cloud then *pulls* that exact image to run it.

**In the training:** your pipeline pushes your app's image to an ACR prepared for you.

---

## Azure Container Apps (ACA)

**What:** an Azure service that runs your containers on the internet without you managing servers.

**Why it matters:** you give it an image from ACR; it starts containers, gives the app a web address, and scales it up and down with traffic.

**In the training:** this is where your app goes live.

---

## Infrastructure as code (Bicep)

**What:** describing cloud resources – registry, container app, settings – in files instead of clicking them together in the Azure portal. Bicep is Azure's language for it.

**Why it matters:** the infrastructure is versioned, reviewed and repeatable like any other code, and a pipeline can create it.

**In the training:** your agent writes Bicep; the pipeline applies it.

---

## Secrets & environments

**What:** *secrets* are passwords, tokens and keys. *Environments* are the separate places an app runs – e.g. development, test, production.

**Why it matters:** a secret in Git is a leaked secret. Each environment gets its own settings, kept outside the code: in GitHub Actions secrets or Azure, and locally in a git-ignored `.env` file.

**In the training:** your credentials are given to you – keep them out of files, commits and prompts.

---

## Working with a coding agent

**What:** an AI tool – such as GitHub Copilot, Claude Code, Codex CLI or Cursor – that reads your project, edits files and runs commands for you.

**Why it matters:** it is fast, but it needs clear instructions and guardrails: rules it follows, tests that prove its work, and a person who reviews.

**In the training:** you decide what to build and how to work; the agent does the typing; you read what it did before it is merged.

---

<!-- _class: closing -->
<!-- _paginate: false -->

# See you at the training

Questions? [trainings@aiready.rocks](mailto:trainings@aiready.rocks)
