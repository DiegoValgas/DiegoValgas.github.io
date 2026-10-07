# Tech Stack do Projeto

- Este documento define as tecnologias oficiais deste projeto.
- Todos os agentes (Architect, Coder, Tester, Reviewer) devem seguir rigorosamente as instruções abaixo ao gerar, revisar ou testar código.

## Tecnologias utilizadas

- Framework Vue.js 3.x.
- Linguagem frontend JavaScript ES2022+.
- Marcação HTML5.
- Estilização CSS3.

## Frontend — Vue.js

### Regras obrigatórias
- Nunca utilize Typescript.
- Use **Vue 3** com **Composition API** (`<script setup>`), nunca Options API.
- Prefira **`ref`** e **`computed`** em vez de `data()` e `methods`.
- Componentes devem ser **Single File Components** (`.vue`) com blocos `<script setup>`, `<template>` e `<style scoped>` nesta ordem.
- Nomeie componentes em **PascalCase** (ex.: `UserProfile.vue`).
- Props devem ser declaradas com `defineProps` e tipadas via JSDoc quando possível.
- Emita eventos com `defineEmits`, nunca com `this.$emit`.
- Use `v-model` com `defineModel` quando o componente for reutilizável.

### Proibido
- Não use Vue 2 ou Options API.
- Não misture lógica de negócio dentro de componentes — extraia para `composables/`.
- Não use jQuery ou manipulação direta do DOM.

---

## JavaScript

### Regras obrigatórias
- Alvo: **ES2022+** (top-level await, optional chaining, nullish coalescing).
- Use **arrow functions** para callbacks e funções curtas.
- Prefira **`const`** → **`let`** → nunca **`var`**.
- Use **template literals** em vez de concatenação com `+`.
- Use **destructuring** para acessar props e objetos.
- Nomes: `camelCase` para variáveis/funções, `PascalCase` para classes/componentes,
  `UPPER_SNAKE_CASE` para constantes globais.
- Sempre use `===` e `!==`, nunca `==` ou `!=`.
- Trate promises com `async/await` e `try/catch`.

### Proibido
- Não use `any` implícito em JSDoc — documente tipos quando relevante.
- Não deixe `console.log` em código de produção (use um logger).

---

## HTML

### Regras obrigatórias
- Use **HTML5 semântico**: `<header>`, `<nav>`, `<main>`, `<section>`, `<article>`, `<footer>`.
- Todo `<img>` deve ter `alt` descritivo.
- Inputs devem ter `<label>` associado via `for`/`id`.
- Use `lang="pt-BR"` (ou o idioma correto) na tag `<html>`.
- Prefira `<button type="button">` para ações e `<button type="submit">` em forms.

### Acessibilidade (obrigatório)
- Contraste mínimo AA (WCAG 2.1).
- Navegação por teclado funcional.
- Use `aria-*` apenas quando o HTML semântico não for suficiente.

---

## CSS — Tailwind CSS

### Regras obrigatórias
- Use **Tailwind CSS 3.x** como única camada de estilização.
- Utilize **classes utilitárias** diretamente no `class` dos elementos Vue.
- Configure tokens do projeto em `tailwind.config.js` (`theme.extend`):
  - Cores da marca (`colors.brand.*`)
  - Fontes (`fontFamily`)
  - Espaçamentos e breakpoints customizados
- Use o plugin **`@tailwindcss/forms`** para padronizar inputs.
- Use **`@apply`** apenas em casos de repetição real (ex.: botão base), dentro do `<style scoped>` ou em um arquivo `@layer components`.
- Ordene as classes seguindo o padrão do **Prettier Plugin Tailwind** (`prettier-plugin-tailwindcss`) — ordem automática.
- Prefira **variantes responsivas mobile-first**: `sm:`, `md:`, `lg:`, `xl:`.
- Use **variantes de estado**: `hover:`, `focus:`, `active:`, `disabled:`, `dark:` (quando dark mode estiver habilitado).
- Para dark mode, use a estratégia **`class`** (`darkMode: 'class'`).

### Proibido
- Não use CSS puro ou `<style scoped>` com regras manuais (exceto **`@apply`** para componentes reutilizáveis).
- Não use `!important` — se precisar, use a sintaxe `!` do Tailwind `(!text-red-500)` apenas em último caso.
- Não use estilos inline `(:style)` para o que Tailwind resolve.
- Não instale frameworks CSS concorrentes (Bootstrap, Bulma, etc.).
- Não use `@apply` em excesso — prefira classes diretas no template.
- Não crie nomes de classe customizados sem necessidade real.