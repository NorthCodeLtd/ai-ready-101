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
/* Text left, diagram right */
section .split {
  display: grid;
  grid-template-columns: 1fr 1.1fr;
  gap: 48px;
  align-items: center;
}
section .split.wide {
  grid-template-columns: 1fr 1.7fr;
  gap: 40px;
}
section .diagram {
  width: 100%;
  height: auto;
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

<div class="split">
<div>

**What:** a version history for your code. Each saved step is a *commit*.

**Why it matters:** you see who changed what and why, can try an idea on a *branch*, and can go back if something breaks.

**In the training:** your coding agent commits; you read the history.

</div>
<svg class="diagram" viewBox="0 0 560 320" role="img" aria-label="Git: commits in a row form the history; a branch splits off to try an idea">
  <path d="M210 230 C 250 230, 250 120, 290 120 L 360 120" fill="none" stroke="#a9f5e4" stroke-width="3"/>
  <line x1="20" y1="230" x2="540" y2="230" stroke="#f5f5f5" stroke-width="3"/>
  <circle cx="70" cy="230" r="8" fill="#1c1c1c" stroke="#f5f5f5" stroke-width="3"/>
  <circle cx="210" cy="230" r="8" fill="#1c1c1c" stroke="#f5f5f5" stroke-width="3"/>
  <circle cx="350" cy="230" r="8" fill="#1c1c1c" stroke="#f5f5f5" stroke-width="3"/>
  <circle cx="490" cy="230" r="8" fill="#1c1c1c" stroke="#f5f5f5" stroke-width="3"/>
  <circle cx="360" cy="120" r="8" fill="#a9f5e4"/>
  <g font-family="'IBM Plex Mono', monospace" font-size="22">
    <text x="20" y="44" fill="#f5f5f5">each dot = a commit</text>
    <text x="380" y="127" fill="#a9f5e4">branch</text>
    <text x="70" y="274" fill="#f5f5f5" text-anchor="middle">add</text>
    <text x="210" y="274" fill="#f5f5f5" text-anchor="middle">fix</text>
    <text x="350" y="274" fill="#f5f5f5" text-anchor="middle">test</text>
    <text x="490" y="274" fill="#f5f5f5" text-anchor="middle">style</text>
    <text x="540" y="312" fill="#f5f5f5" text-anchor="end" opacity="0.4">time →</text>
  </g>
</svg>
</div>

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

<div class="split">
<div>

**What:** `main` always works. Every change gets its own branch and pull request.

**Why it matters:** each change is small, tested and reviewed before it reaches `main` – even when an AI wrote it.

**In the training:** you decide what gets merged.

</div>
<svg class="diagram" viewBox="0 0 560 320" role="img" aria-label="GitHub flow: a branch leaves main and gets commits; a pull request wraps those commits for checks and review; then it is merged back into main">
  <rect x="198" y="108" width="244" height="64" rx="10" fill="none" stroke="#a9f5e4" stroke-width="2" stroke-dasharray="6 5"/>
  <path d="M130 250 C 170 250, 170 140, 210 140 L 390 140 C 430 140, 430 250, 470 250" fill="none" stroke="#a9f5e4" stroke-width="3"/>
  <line x1="10" y1="250" x2="550" y2="250" stroke="#f5f5f5" stroke-width="3"/>
  <circle cx="50" cy="250" r="8" fill="#1c1c1c" stroke="#f5f5f5" stroke-width="3"/>
  <circle cx="130" cy="250" r="8" fill="#1c1c1c" stroke="#f5f5f5" stroke-width="3"/>
  <circle cx="530" cy="250" r="8" fill="#1c1c1c" stroke="#f5f5f5" stroke-width="3"/>
  <circle cx="250" cy="140" r="8" fill="#a9f5e4"/>
  <circle cx="320" cy="140" r="8" fill="#a9f5e4"/>
  <circle cx="390" cy="140" r="8" fill="#a9f5e4"/>
  <circle cx="470" cy="250" r="9" fill="#a9f5e4" stroke="#f5f5f5" stroke-width="3"/>
  <g font-family="'IBM Plex Mono', monospace" font-size="22">
    <text x="320" y="56" fill="#a9f5e4" text-anchor="middle">3 pull request</text>
    <text x="320" y="88" fill="#f5f5f5" text-anchor="middle">checks + review</text>
    <text x="320" y="210" fill="#a9f5e4" text-anchor="middle">2 commits</text>
    <text x="140" y="200" fill="#a9f5e4" text-anchor="end">1 branch</text>
    <text x="458" y="200" fill="#a9f5e4">4 merge</text>
    <text x="10" y="292" fill="#f5f5f5">main</text>
  </g>
</svg>
</div>

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

<div class="split">
<div>

**What:** code that checks other code works – at three levels.

**Why it matters:** when the tests pass, nothing broke – for you and for your agent.

**In the training:** tests come first, and the agent runs them after every change.

</div>
<svg class="diagram" viewBox="0 0 560 320" role="img" aria-label="Testing pyramid: few slow acceptance tests at the top, integration tests in the middle, many fast unit tests at the bottom">
  <polygon points="180,20 180,20 231.42857142857144,110 128.57142857142856,110" fill="#a9f5e4"/>
  <polygon points="125.14285714285714,116 234.85714285714286,116 285.1428571428571,204 74.85714285714286,204" fill="#a9f5e4"/>
  <polygon points="71.42857142857142,210 288.57142857142856,210 340,300 20,300" fill="#a9f5e4"/>
  <g font-family="'IBM Plex Mono', monospace" font-size="22">
    <text x="370" y="76" fill="#a9f5e4">acceptance</text>
    <text x="370" y="104" fill="#f5f5f5">few · slow</text>
    <text x="370" y="170" fill="#a9f5e4">integration</text>
    <text x="370" y="262" fill="#a9f5e4">unit</text>
    <text x="370" y="290" fill="#f5f5f5">many · fast</text>
  </g>
</svg>
</div>

---

## CI/CD with GitHub Actions

<div class="split">
<div>

**What:** *CI* builds and tests every change automatically. *CD* ships the tested change to users.

**Why it matters:** problems show up in minutes, not weeks, and releasing becomes routine.

**In the training:** a GitHub Actions workflow runs on every push and deploys to Azure.

</div>
<svg class="diagram" viewBox="0 0 600 320" role="img" aria-label="CI/CD: you push; CI builds and tests the change; CD deploys it. A failing test stops the line.">
  <rect x="4" y="110" width="118" height="64" rx="8" fill="none" stroke="#f5f5f5" stroke-width="2"/>
  <rect x="152" y="110" width="118" height="64" rx="8" fill="none" stroke="#a9f5e4" stroke-width="2"/>
  <rect x="300" y="110" width="118" height="64" rx="8" fill="none" stroke="#a9f5e4" stroke-width="2"/>
  <rect x="448" y="110" width="118" height="64" rx="8" fill="none" stroke="#a9f5e4" stroke-width="2"/>
  <line x1="126" y1="142" x2="140" y2="142" stroke="#f5f5f5" stroke-width="2"/><polygon points="148,142 138,136 138,148" fill="#f5f5f5"/>
  <line x1="274" y1="142" x2="288" y2="142" stroke="#f5f5f5" stroke-width="2"/><polygon points="296,142 286,136 286,148" fill="#f5f5f5"/>
  <line x1="422" y1="142" x2="436" y2="142" stroke="#f5f5f5" stroke-width="2"/><polygon points="444,142 434,136 434,148" fill="#f5f5f5"/>
  <g font-family="'IBM Plex Mono', monospace" font-size="24">
    <text x="63" y="150" fill="#f5f5f5" text-anchor="middle">push</text>
    <text x="211" y="150" fill="#a9f5e4" text-anchor="middle">build</text>
    <text x="359" y="150" fill="#a9f5e4" text-anchor="middle">test</text>
    <text x="507" y="150" fill="#a9f5e4" text-anchor="middle">deploy</text>
    <text x="63" y="80" fill="#f5f5f5" text-anchor="middle">you</text>
    <path d="M152 196 L152 206 L418 206 L418 196" fill="none" stroke="#a9f5e4" stroke-width="2"/><text x="285" y="238" fill="#a9f5e4" text-anchor="middle">CI</text>
    <path d="M448 196 L448 206 L566 206 L566 196" fill="none" stroke="#a9f5e4" stroke-width="2"/><text x="507" y="238" fill="#a9f5e4" text-anchor="middle">CD</text>
    <text x="300" y="306" fill="#f5f5f5" text-anchor="middle">a failing test stops the line</text>
  </g>
</svg>
</div>

---

## Docker

<div class="split wide">
<div>

**What:** packs an app and all it needs into an *image*, built from a `Dockerfile`.

**Why it matters:** the same image runs on your laptop, in CI and in the cloud.

**In the training:** your app is built into an image.

</div>
<svg class="diagram" viewBox="0 0 700 300" role="img" aria-label="From Dockerfile to a live app: build an image, push it to Azure Container Registry, run it on Azure Container Apps">
  <g ><path d="M42 114 h40 l16 16 v56 h-56 z" fill="none" stroke="#a9f5e4" stroke-width="3"/><line x1="52" y1="140" x2="88" y2="140" stroke="#a9f5e4" stroke-width="2"/><line x1="52" y1="152" x2="88" y2="152" stroke="#a9f5e4" stroke-width="2"/><line x1="52" y1="164" x2="88" y2="164" stroke="#a9f5e4" stroke-width="2"/></g>
  <g ><rect x="223" y="126" width="64" height="16" rx="3" fill="#a9f5e4"/><rect x="223" y="146" width="64" height="16" rx="3" fill="#a9f5e4"/><rect x="223" y="166" width="64" height="16" rx="3" fill="#a9f5e4"/></g>
  <g opacity="0.4"><rect x="400" y="114" width="80" height="72" rx="6" fill="none" stroke="#f5f5f5" stroke-width="3"/><rect x="412" y="126" width="26" height="18" rx="2" fill="#f5f5f5"/><rect x="442" y="126" width="26" height="18" rx="2" fill="#f5f5f5"/><rect x="412" y="156" width="26" height="18" rx="2" fill="#f5f5f5"/><rect x="442" y="156" width="26" height="18" rx="2" fill="#f5f5f5"/></g>
  <g opacity="0.4"><rect x="585" y="116" width="80" height="68" rx="8" fill="none" stroke="#f5f5f5" stroke-width="3"/><polygon points="615,134 641,150 615,166" fill="#f5f5f5"/></g>
  <g font-family="'IBM Plex Mono', monospace" font-size="24">
    <g ><line x1="120" y1="150" x2="195" y2="150" stroke="#a9f5e4" stroke-width="3"/><polygon points="205,150 193,143 193,157" fill="#a9f5e4"/><text x="162.5" y="128" fill="#a9f5e4" text-anchor="middle">build</text></g>
    <g opacity="0.4"><line x1="305" y1="150" x2="380" y2="150" stroke="#f5f5f5" stroke-width="3"/><polygon points="390,150 378,143 378,157" fill="#f5f5f5"/><text x="347.5" y="128" fill="#f5f5f5" text-anchor="middle">push</text></g>
    <g opacity="0.4"><line x1="490" y1="150" x2="565" y2="150" stroke="#f5f5f5" stroke-width="3"/><polygon points="575,150 563,143 563,157" fill="#f5f5f5"/><text x="532.5" y="128" fill="#f5f5f5" text-anchor="middle">run</text></g>
    <text x="70" y="230" fill="#a9f5e4" text-anchor="middle" >Dockerfile</text>
    <text x="255" y="230" fill="#a9f5e4" text-anchor="middle" >image</text>
    <text x="440" y="230" fill="#f5f5f5" text-anchor="middle" opacity="0.4">ACR</text>
    <text x="625" y="230" fill="#f5f5f5" text-anchor="middle" opacity="0.4">ACA</text>
    <text x="70" y="260" fill="#f5f5f5" text-anchor="middle" >recipe</text>
    <text x="255" y="260" fill="#f5f5f5" text-anchor="middle" >package</text>
    <text x="440" y="260" fill="#f5f5f5" text-anchor="middle" opacity="0.4">storage</text>
    <text x="625" y="260" fill="#f5f5f5" text-anchor="middle" opacity="0.4">live app</text>
  </g>
</svg>
</div>

---

## Azure Container Registry (ACR)

<div class="split wide">
<div>

**What:** Azure's private storage for images – like GitHub, but for images.

**Why it matters:** CI *pushes* an image once; the cloud *pulls* that exact image.

**In the training:** your pipeline pushes to an ACR prepared for you.

</div>
<svg class="diagram" viewBox="0 0 700 300" role="img" aria-label="From Dockerfile to a live app: build an image, push it to Azure Container Registry, run it on Azure Container Apps">
  <g opacity="0.4"><path d="M42 114 h40 l16 16 v56 h-56 z" fill="none" stroke="#f5f5f5" stroke-width="3"/><line x1="52" y1="140" x2="88" y2="140" stroke="#f5f5f5" stroke-width="2"/><line x1="52" y1="152" x2="88" y2="152" stroke="#f5f5f5" stroke-width="2"/><line x1="52" y1="164" x2="88" y2="164" stroke="#f5f5f5" stroke-width="2"/></g>
  <g opacity="0.4"><rect x="223" y="126" width="64" height="16" rx="3" fill="#f5f5f5"/><rect x="223" y="146" width="64" height="16" rx="3" fill="#f5f5f5"/><rect x="223" y="166" width="64" height="16" rx="3" fill="#f5f5f5"/></g>
  <g ><rect x="400" y="114" width="80" height="72" rx="6" fill="none" stroke="#a9f5e4" stroke-width="3"/><rect x="412" y="126" width="26" height="18" rx="2" fill="#a9f5e4"/><rect x="442" y="126" width="26" height="18" rx="2" fill="#a9f5e4"/><rect x="412" y="156" width="26" height="18" rx="2" fill="#a9f5e4"/><rect x="442" y="156" width="26" height="18" rx="2" fill="#a9f5e4"/></g>
  <g opacity="0.4"><rect x="585" y="116" width="80" height="68" rx="8" fill="none" stroke="#f5f5f5" stroke-width="3"/><polygon points="615,134 641,150 615,166" fill="#f5f5f5"/></g>
  <g font-family="'IBM Plex Mono', monospace" font-size="24">
    <g opacity="0.4"><line x1="120" y1="150" x2="195" y2="150" stroke="#f5f5f5" stroke-width="3"/><polygon points="205,150 193,143 193,157" fill="#f5f5f5"/><text x="162.5" y="128" fill="#f5f5f5" text-anchor="middle">build</text></g>
    <g ><line x1="305" y1="150" x2="380" y2="150" stroke="#a9f5e4" stroke-width="3"/><polygon points="390,150 378,143 378,157" fill="#a9f5e4"/><text x="347.5" y="128" fill="#a9f5e4" text-anchor="middle">push</text></g>
    <g opacity="0.4"><line x1="490" y1="150" x2="565" y2="150" stroke="#f5f5f5" stroke-width="3"/><polygon points="575,150 563,143 563,157" fill="#f5f5f5"/><text x="532.5" y="128" fill="#f5f5f5" text-anchor="middle">run</text></g>
    <text x="70" y="230" fill="#f5f5f5" text-anchor="middle" opacity="0.4">Dockerfile</text>
    <text x="255" y="230" fill="#f5f5f5" text-anchor="middle" opacity="0.4">image</text>
    <text x="440" y="230" fill="#a9f5e4" text-anchor="middle" >ACR</text>
    <text x="625" y="230" fill="#f5f5f5" text-anchor="middle" opacity="0.4">ACA</text>
    <text x="70" y="260" fill="#f5f5f5" text-anchor="middle" opacity="0.4">recipe</text>
    <text x="255" y="260" fill="#f5f5f5" text-anchor="middle" opacity="0.4">package</text>
    <text x="440" y="260" fill="#f5f5f5" text-anchor="middle" >storage</text>
    <text x="625" y="260" fill="#f5f5f5" text-anchor="middle" opacity="0.4">live app</text>
  </g>
</svg>
</div>

---

## Azure Container Apps (ACA)

<div class="split wide">
<div>

**What:** runs your containers on the internet – no servers to manage.

**Why it matters:** it gives the app a web address and scales it with traffic.

**In the training:** this is where your app goes live.

</div>
<svg class="diagram" viewBox="0 0 700 300" role="img" aria-label="From Dockerfile to a live app: build an image, push it to Azure Container Registry, run it on Azure Container Apps">
  <g opacity="0.4"><path d="M42 114 h40 l16 16 v56 h-56 z" fill="none" stroke="#f5f5f5" stroke-width="3"/><line x1="52" y1="140" x2="88" y2="140" stroke="#f5f5f5" stroke-width="2"/><line x1="52" y1="152" x2="88" y2="152" stroke="#f5f5f5" stroke-width="2"/><line x1="52" y1="164" x2="88" y2="164" stroke="#f5f5f5" stroke-width="2"/></g>
  <g opacity="0.4"><rect x="223" y="126" width="64" height="16" rx="3" fill="#f5f5f5"/><rect x="223" y="146" width="64" height="16" rx="3" fill="#f5f5f5"/><rect x="223" y="166" width="64" height="16" rx="3" fill="#f5f5f5"/></g>
  <g opacity="0.4"><rect x="400" y="114" width="80" height="72" rx="6" fill="none" stroke="#f5f5f5" stroke-width="3"/><rect x="412" y="126" width="26" height="18" rx="2" fill="#f5f5f5"/><rect x="442" y="126" width="26" height="18" rx="2" fill="#f5f5f5"/><rect x="412" y="156" width="26" height="18" rx="2" fill="#f5f5f5"/><rect x="442" y="156" width="26" height="18" rx="2" fill="#f5f5f5"/></g>
  <g ><rect x="585" y="116" width="80" height="68" rx="8" fill="none" stroke="#a9f5e4" stroke-width="3"/><polygon points="615,134 641,150 615,166" fill="#a9f5e4"/></g>
  <g font-family="'IBM Plex Mono', monospace" font-size="24">
    <g opacity="0.4"><line x1="120" y1="150" x2="195" y2="150" stroke="#f5f5f5" stroke-width="3"/><polygon points="205,150 193,143 193,157" fill="#f5f5f5"/><text x="162.5" y="128" fill="#f5f5f5" text-anchor="middle">build</text></g>
    <g opacity="0.4"><line x1="305" y1="150" x2="380" y2="150" stroke="#f5f5f5" stroke-width="3"/><polygon points="390,150 378,143 378,157" fill="#f5f5f5"/><text x="347.5" y="128" fill="#f5f5f5" text-anchor="middle">push</text></g>
    <g ><line x1="490" y1="150" x2="565" y2="150" stroke="#a9f5e4" stroke-width="3"/><polygon points="575,150 563,143 563,157" fill="#a9f5e4"/><text x="532.5" y="128" fill="#a9f5e4" text-anchor="middle">run</text></g>
    <text x="70" y="230" fill="#f5f5f5" text-anchor="middle" opacity="0.4">Dockerfile</text>
    <text x="255" y="230" fill="#f5f5f5" text-anchor="middle" opacity="0.4">image</text>
    <text x="440" y="230" fill="#f5f5f5" text-anchor="middle" opacity="0.4">ACR</text>
    <text x="625" y="230" fill="#a9f5e4" text-anchor="middle" >ACA</text>
    <text x="70" y="260" fill="#f5f5f5" text-anchor="middle" opacity="0.4">recipe</text>
    <text x="255" y="260" fill="#f5f5f5" text-anchor="middle" opacity="0.4">package</text>
    <text x="440" y="260" fill="#f5f5f5" text-anchor="middle" opacity="0.4">storage</text>
    <text x="625" y="260" fill="#f5f5f5" text-anchor="middle" >live app</text>
  </g>
</svg>
</div>

---

## Infrastructure as code (Bicep)

**What:** describing cloud resources – registry, container app, settings – in files instead of clicking them together in the Azure portal. Bicep is Azure's language for it.

**Why it matters:** the infrastructure is versioned, reviewed and repeatable like any other code, and a pipeline can create it.

**In the training:** your agent writes Bicep; the pipeline applies it.

---

## Secrets & environments

<div class="split">
<div>

**What:** *secrets* are passwords, tokens and keys. *Environments* are where the app runs.

**Why it matters:** each environment has its own secrets, kept outside the code – a secret in Git is a leaked secret.

**In the training:** keep your credentials out of files, commits and prompts.

</div>
<svg class="diagram" viewBox="0 0 560 320" role="img" aria-label="The same code runs in dev, test and production; each environment has its own secrets, never stored in Git">
  <rect x="200" y="12" width="160" height="52" rx="8" fill="none" stroke="#f5f5f5" stroke-width="2"/>
  <line x1="280" y1="64" x2="90" y2="120" stroke="#f5f5f5" stroke-width="2"/><polygon points="90,128 84,117 96,117" fill="#f5f5f5"/>
  <line x1="280" y1="64" x2="280" y2="120" stroke="#f5f5f5" stroke-width="2"/><polygon points="280,128 274,117 286,117" fill="#f5f5f5"/>
  <line x1="280" y1="64" x2="470" y2="120" stroke="#f5f5f5" stroke-width="2"/><polygon points="470,128 464,117 476,117" fill="#f5f5f5"/>
  <rect x="10" y="130" width="160" height="54" rx="8" fill="none" stroke="#a9f5e4" stroke-width="2"/>
  <rect x="200" y="130" width="160" height="54" rx="8" fill="none" stroke="#a9f5e4" stroke-width="2"/>
  <rect x="390" y="130" width="160" height="54" rx="8" fill="none" stroke="#a9f5e4" stroke-width="2"/>
  <circle cx="68" cy="232" r="11" fill="none" stroke="#a9f5e4" stroke-width="3"/><path d="M79 232 h36 m-10 0 v10 m-10 -10 v8" fill="none" stroke="#a9f5e4" stroke-width="3"/>
  <circle cx="258" cy="232" r="11" fill="none" stroke="#a9f5e4" stroke-width="3"/><path d="M269 232 h36 m-10 0 v10 m-10 -10 v8" fill="none" stroke="#a9f5e4" stroke-width="3"/>
  <circle cx="448" cy="232" r="11" fill="none" stroke="#a9f5e4" stroke-width="3"/><path d="M459 232 h36 m-10 0 v10 m-10 -10 v8" fill="none" stroke="#a9f5e4" stroke-width="3"/>
  <g font-family="'IBM Plex Mono', monospace" font-size="22">
    <text x="280" y="46" fill="#f5f5f5" text-anchor="middle">same code</text>
    <text x="90" y="165" fill="#a9f5e4" text-anchor="middle">dev</text>
    <text x="280" y="165" fill="#a9f5e4" text-anchor="middle">test</text>
    <text x="470" y="165" fill="#a9f5e4" text-anchor="middle">production</text>
    <text x="90" y="276" fill="#f5f5f5" text-anchor="middle">own secrets</text>
    <text x="280" y="276" fill="#f5f5f5" text-anchor="middle">own secrets</text>
    <text x="470" y="276" fill="#f5f5f5" text-anchor="middle">own secrets</text>
    <text x="280" y="314" fill="#f5f5f5" text-anchor="middle" opacity="0.4">never in Git</text>
  </g>
</svg>
</div>

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
