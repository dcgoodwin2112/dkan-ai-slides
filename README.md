# DKAN + AI slide decks

Two [reveal.js](https://revealjs.com) decks sharing one setup — no build step.

| Deck | Event | Live |
|---|---|---|
| `index.html` — **DKAN+AI: From Catalog to Conversation** | DrupalCamp Asheville 2026 | https://dcgoodwin2112.github.io/dkan-ai-slides/ |
| `index-learners-club.html` — **Tools, Resources, Prompts** | Drupal AI Learners Club, Aug 2026 | https://dcgoodwin2112.github.io/dkan-ai-slides/index-learners-club.html |

## Present

Open the deck's HTML file in a browser (or serve the directory). Keys: `S` speaker view, `F` fullscreen, `Esc` overview.

## Export PDF

```bash
./export-pdf.sh   # → slides.pdf (index.html only; needs Chrome + python3)
```

## Publish

GitHub Pages serves `main` at the URLs above — push to publish.

## Live demos

Both decks demo against a local DKAN site (DDEV) with the sample datasets and the [`dkan_ai_query`](https://www.drupal.org/project/dkan_ai_query) / [`dkan_mcp_server`](https://www.drupal.org/project/dkan_mcp_server) modules installed. The Learners Club deck demos twice: Claude Code over stdio, then [MCP Dojo](https://mcpdojo.dev) ([repo](https://github.com/dcgoodwin2112/mcp-dojo)) over HTTP; its speaker notes carry both runbooks.
