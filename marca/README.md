# Patente — Sistema de marca

Pacote de assets finais. v1.0 · maio 2026

---

## Paleta

| Cor | Hex | Uso |
|---|---|---|
| Papel | `#f3efe6` | Fundo claro principal |
| Tinta | `#15202b` | Texto e fundo escuro |
| Terracota | `#7c2410` | Destaque sobre papel (o ponto, links, CTAs) |
| Coral | `#d97757` | Destaque sobre tinta (WCAG AA) |

## Tipografia

- **Newsreader** — conduz a marca (wordmark + corpo editorial). Pesos usados: 400, 500.
- **Playfair Display** — títulos editoriais. Pesos: 500, 600.
- **Inter** — UI, legendas, sub-titles, mono. Pesos: 500, 600.

Todas em Google Fonts.

---

## Arquivos

### Wordmark `Patente.`

Newsreader Medium, Title Case, ponto terminal terracota/coral.

- `patente-wordmark-papel.svg` — para fundo claro
- `patente-wordmark-tinta.svg` — para fundo escuro
- `patente-wordmark-mono-tinta.svg` — monocromático escuro
- `patente-wordmark-mono-papel.svg` — monocromático claro

> **Importante:** o wordmark usa Newsreader via Google Fonts (`@import` embutido no SVG). Funciona perfeitamente em navegadores. Para uso em Illustrator/InDesign ou impressão final, **converter o texto em curvas** antes (Object → Outline Text). Posso entregar versão outlined se você precisar — basta pedir.

### Símbolo (mira)

Paths puros, sem dependência de fonte. Funciona em qualquer lugar.

- `patente-simbolo-terracota.svg` — uso default (sobre claro)
- `patente-simbolo-coral.svg` — sobre escuro
- `patente-simbolo-mono-tinta.svg` — mono escuro
- `patente-simbolo-mono-papel.svg` — mono claro

PNGs de fallback (transparente):

- `patente-simbolo-terracota-64.png` … `-1024.png`
- `patente-simbolo-coral-256.png` … `-1024.png`

### Lockup (símbolo + wordmark)

- `patente-lockup-papel.svg` — fundo claro
- `patente-lockup-tinta.svg` — fundo escuro (com bg)

### Favicon

Símbolo ajustado para tamanhos pequenos (brackets engordados, ponto central maior, com fundo).

- `patente-favicon-papel.svg` — favicon claro (recomendado como default)
- `patente-favicon-tinta.svg` — favicon dark mode
- `patente-favicon-16.png`, `-32.png`, `-64.png`, `-180.png`, `-512.png` — fallbacks
- `patente-favicon-tinta-180.png`, `-512.png` — versão escura

---

## Como usar no `<head>` do site

```html
<link rel="icon" type="image/svg+xml" href="/marca/patente-favicon-papel.svg" />
<link rel="alternate icon" href="/marca/patente-favicon-32.png" />
<link rel="apple-touch-icon" href="/marca/patente-favicon-180.png" />
<meta name="theme-color" content="#f3efe6" media="(prefers-color-scheme: light)" />
<meta name="theme-color" content="#15202b" media="(prefers-color-scheme: dark)" />
```

Para dark-mode favicon automático:

```html
<link rel="icon" type="image/svg+xml" href="/marca/patente-favicon-papel.svg" media="(prefers-color-scheme: light)" />
<link rel="icon" type="image/svg+xml" href="/marca/patente-favicon-tinta.svg" media="(prefers-color-scheme: dark)" />
```

---

## Anti-padrões

- Não distorça (`scale-x`, `scale-y` desiguais).
- Não rotacione.
- Não use gradiente em nada.
- Não troque a cor do ponto — sempre terracota (claro) ou coral (escuro).
- Não use o símbolo dentro de uma frase como ícone — ele é marca, não pictograma.
- Respiração mínima: em volta do wordmark, deixar espaço = altura do "P". Em volta do símbolo, metade da largura dele.
