# Patente · Brand Guide

Documento de apoio. Sistema de marca completo · v1.0 · maio 2026
Anexar a este projeto como referência permanente.

---

## 1 · Identidade

**Patente** é uma marca de inteligência aplicada e capacitação executiva em IA, fundada por **Thiago Patente**.

**Site:** thiagopatente.com.br
**Posicionamento:** capacita profissionais sêniores e empresas a aplicar IA no trabalho real, com a profundidade de quem já fazia análise estratégica antes da IA existir.

O nome "Patente" carrega três sentidos em português:

1. **Substantivo** — propriedade intelectual, invenção, registro técnico
2. **Adjetivo** — evidente, manifesto, que se vê com clareza
3. **Militar** — posto, hierarquia, autoridade

Todos os três alinham ao que o negócio entrega.

---

## 2 · Arquitetura

| Camada | Nome | Onde aparece |
|---|---|---|
| Master brand | **Patente** | Site, header, domínio, logo, papelaria, materiais oficiais |
| Produto | **Patente.Intelligence** | Plataforma — 4 agentes de IA encadeados |
| Produto | **Patente.Workshop** | Capacitação — individual e corporativa |
| Fundador | **Thiago Patente** | Bio, talks, artigos, LinkedIn, página /sobre |

> **Regra:** o logo do site é sempre **Patente**, nunca "Thiago Patente". Thiago é o fundador, não a marca.

**Convenção de naming das sub-marcas:** sempre `Patente.Intelligence` e `Patente.Workshop` — com ponto característico entre as palavras. O ponto sempre em terracota (sobre claro) ou coral (sobre escuro).

---

## 3 · Tom de voz

Editorial executivo brasileiro. Direto. Sério. Padrão McKinsey — **nunca SaaS genérico**.

**Referências de tom:** The Economist, McKinsey, Bain, Stripe (em sobriedade), Nubank (em wordmark lowercase).

### Exemplos

| ✅ Faz | ❌ Não faz |
|---|---|
| "Quatro agentes de IA encadeados, construídos pelo analista que vai usá-los." | "🚀 Transforme seu negócio com IA!" |
| "Prova de execução, não prova de conceito." | "Descubra o poder da inteligência artificial..." |
| "Inteligência aplicada. Capacitação executiva." | "Soluções inovadoras de ponta a ponta." |
| "Patente. evidente." | "A revolução da IA chegou!" |

### Quando em dúvida

Pergunte: *"Isso passaria num relatório da McKinsey?"* Se não, simplifique.

---

## 4 · Paleta

Quatro cores. Nunca adicionar mais.

| Token | Hex | Função |
|---|---|---|
| **Papel** | `#f3efe6` | Fundo claro principal — default do site |
| **Tinta** | `#15202b` | Texto, fundo escuro, hero Patente.Intelligence |
| **Terracota** | `#7c2410` | Destaque sobre Papel — ponto, links, CTAs |
| **Coral** | `#d97757` | Destaque sobre Tinta — ponto, links, CTAs (WCAG AA) |

### Regras

- Cinzas vêm de opacidade da Tinta: `rgba(21,32,43, .5)`, `.7`, etc.
- **Nunca** use gradiente. Em wordmark, símbolo, background — em nada.
- **Nunca** troque a cor do ponto — sempre Terracota (claro) ou Coral (escuro).

### Como variáveis CSS

```css
:root {
  --papel: #f3efe6;
  --tinta: #15202b;
  --terracota: #7c2410;
  --coral: #d97757;
}
```

---

## 5 · Tipografia

Três fontes. Todas no Google Fonts.

| Fonte | Função | Pesos |
|---|---|---|
| **Newsreader** | Wordmark, corpo editorial, citações | 400, 500 (+ itálicos) |
| **Playfair Display** | Títulos longos, hero, capa | 500, 600 |
| **Inter** | UI, navegação, botões, legendas, mono | 500, 600 |

### Import

```html
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@500;600&family=Newsreader:ital,wght@0,400;0,500;1,400&family=Inter:wght@500;600&display=swap" />
```

### Sub-titles e UI labels

Use **Inter Semibold** em ALL CAPS com tracking aberto:

```css
font-family: 'Inter', sans-serif;
font-weight: 600;
font-size: 10px;
letter-spacing: 0.22em;
text-transform: uppercase;
```

### Tamanho mínimo

- Wordmark: **14px digital, 8mm impresso**
- Corpo: **14px digital, 9pt impresso**

---

## 6 · Wordmark

```
Patente.
```

### Especificação

| Propriedade | Valor |
|---|---|
| Fonte | Newsreader |
| Peso | 500 (Medium) |
| Caixa | Title Case — sempre `Patente.`, nunca `PATENTE` ou `patente` |
| Letter-spacing | `-0.025em` |
| Cor do texto | `#15202b` (Tinta) sobre claro · `#f3efe6` (Papel) sobre escuro |
| Cor do ponto | `#7c2410` (Terracota) sobre claro · `#d97757` (Coral) sobre escuro |

### HTML/CSS

```html
<span class="wordmark">
  Patente<span class="wordmark-dot">.</span>
</span>

<style>
  .wordmark {
    font-family: 'Newsreader', Georgia, serif;
    font-weight: 500;
    letter-spacing: -0.025em;
    color: var(--tinta);
  }
  .wordmark-dot { color: var(--terracota); }
</style>
```

### Arquivos SVG

- `marca/patente-wordmark-papel.svg`
- `marca/patente-wordmark-tinta.svg`
- `marca/patente-wordmark-mono-tinta.svg`
- `marca/patente-wordmark-mono-papel.svg`

> Os SVGs usam Newsreader via `@import` do Google Fonts. Para uso em Illustrator/InDesign ou impressão final, converter texto em curvas antes (Object → Outline Text).

---

## 7 · Símbolo (mira)

Quatro corner-brackets enquadrando o ponto central. Path puro, sem fonte.

### SVG canônico

```svg
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100">
  <g fill="none" stroke="#7c2410" stroke-width="4.5" stroke-linecap="square">
    <path d="M 8 30 V 8 H 30" />
    <path d="M 70 8 H 92 V 30" />
    <path d="M 92 70 V 92 H 70" />
    <path d="M 30 92 H 8 V 70" />
  </g>
  <circle cx="50" cy="50" r="9" fill="#7c2410" />
</svg>
```

### Significado

A mira lê como **precisão estratégica**: muitas variáveis pra acertar um alvo. É o sistema visualmente complementando o ponto do wordmark — ambos remetem ao núcleo da marca (acertar com precisão o que importa).

### Arquivos

- `marca/patente-simbolo-terracota.svg` · default
- `marca/patente-simbolo-coral.svg` · sobre escuro
- `marca/patente-simbolo-mono-tinta.svg`, `-mono-papel.svg` · mono
- PNGs: `marca/patente-simbolo-terracota-{64,128,256,512,1024}.png`

---

## 8 · Lockup (símbolo + wordmark)

Símbolo à esquerda, wordmark à direita, gap proporcional à altura do "P".

### Arquivos

- `marca/patente-lockup-papel.svg`
- `marca/patente-lockup-tinta.svg`

### Quando usar

Capa de proposta, primeira página de documento, papelaria oficial, kit de imprensa.

---

## 9 · Favicon

Símbolo otimizado para tamanhos pequenos: brackets engordados, ponto central maior, com fundo arredondado.

### Implementação no `<head>`

```html
<link rel="icon" type="image/svg+xml"
      href="/marca/patente-favicon-papel.svg"
      media="(prefers-color-scheme: light)" />
<link rel="icon" type="image/svg+xml"
      href="/marca/patente-favicon-tinta.svg"
      media="(prefers-color-scheme: dark)" />
<link rel="alternate icon" href="/marca/patente-favicon-32.png" />
<link rel="apple-touch-icon" href="/marca/patente-favicon-180.png" />
<meta name="theme-color" content="#f3efe6" media="(prefers-color-scheme: light)" />
<meta name="theme-color" content="#15202b" media="(prefers-color-scheme: dark)" />
```

### Arquivos

- SVG: `patente-favicon-papel.svg`, `patente-favicon-tinta.svg`
- PNG: `-16.png`, `-32.png`, `-64.png`, `-180.png`, `-512.png` (versões claras)
- PNG escuro: `-tinta-180.png`, `-tinta-512.png`

---

## 10 · Hierarquia de uso

| Contexto | Usar |
|---|---|
| Header do site | Wordmark `Patente.` em ~28px |
| Hero da homepage | Wordmark grande ou Playfair Display + ponto |
| Rodapé | Wordmark pequeno ou só o ponto |
| Capa de proposta / relatório | Lockup (símbolo + wordmark) |
| Avatar LinkedIn / X / podcast | Símbolo sozinho, fundo papel |
| Watermark em vídeo | Símbolo coral sobre tinta |
| Favicon 16×16 | Favicon SVG (brackets engordados) |
| Marca d'água em texto | Apenas o ponto terracota |
| E-mail / assinatura | Wordmark + descritor "Inteligência aplicada" em Inter caps |

---

## 11 · Anti-padrões

| ❌ Não fazer | Por quê |
|---|---|
| Distorcer (scale-x, scale-y desigual) | Quebra a tipografia |
| Rotacionar | Não é decoração |
| Gradiente em qualquer elemento | Sistema é flat |
| Trocar a cor do ponto | O ponto é a assinatura |
| Símbolo dentro de uma frase como pictograma | Símbolo é marca, não ícone |
| Esmagar respiração mínima | Wordmark precisa de espaço = altura do "P" |
| Adicionar cores ao sistema | Quatro cores, só |
| Emojis em copy formal | Tom executivo, não casual |
| Ícones genéricos de IA (cérebro, circuito) | IA é o assunto, não a estética |
| Linguagem de SaaS ("transforme", "revolucione") | Editorial executivo, não marketing |

### Respiração mínima

- Em volta do **wordmark**: deixar espaço = altura da letra "P"
- Em volta do **símbolo**: deixar metade da sua largura
- Tamanho mínimo do **wordmark**: 14px digital, 8mm impresso

---

## 12 · Pacote de assets

Pasta `marca/` contém:

```
marca/
├── README.md                              ← este pacote
├── PROMPT-claude.md                       ← instruções pra Claude
├── Brand Guide.md                         ← este documento
│
├── patente-wordmark-papel.svg             ← wordmark fundo claro
├── patente-wordmark-tinta.svg             ← wordmark fundo escuro
├── patente-wordmark-mono-tinta.svg        ← mono dark
├── patente-wordmark-mono-papel.svg        ← mono light
│
├── patente-simbolo-terracota.svg          ← símbolo default
├── patente-simbolo-coral.svg              ← símbolo sobre escuro
├── patente-simbolo-mono-tinta.svg
├── patente-simbolo-mono-papel.svg
├── patente-simbolo-terracota-{64..1024}.png
├── patente-simbolo-coral-{256..1024}.png
│
├── patente-lockup-papel.svg               ← símbolo + wordmark
├── patente-lockup-tinta.svg
│
├── patente-favicon-papel.svg              ← favicon SVG claro
├── patente-favicon-tinta.svg              ← favicon SVG escuro
├── patente-favicon-{16..512}.png          ← PNGs claros
└── patente-favicon-tinta-{180,512}.png    ← PNGs escuros
```

---

*Documento mantido por Thiago Patente. Atualizações neste arquivo viram a fonte de verdade para qualquer aplicação da marca.*
