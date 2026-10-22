<script setup>
import boobamImage from '../assets/images/boobam.png'
import circuloImage from '../assets/images/circulo.png'
import estampotecaImage from '../assets/images/estampoteca.png'

const projects = [
  { href: 'https://boobam.com.br/', image: boobamImage, alt: 'Boobam - Plataforma brasileira com curadoria de peças de designers, artistas e arquitetos', imageClass: 'w-full h-full object-cover transition-transform duration-[400ms]', linkClass: '', infoClass: '', year: '2023', name: 'Boobam', description: 'A Boobam é uma plataforma brasileira com curadoria de peças de designers, artistas e arquitetos, que conecta esses criadores diretamente a quem admira e compra design autoral. Ela oferece mobiliário, objetos e soluções personalizadas para ambientes, com um consultor que acompanha o cliente da escolha ao pós-venda.', technologies: ['PHP', 'Javascript'] },
  { href: 'https://www.circulo.com.br/', image: circuloImage, alt: 'Circulo - Tradicional marca brasileira de fios e linhas', imageClass: 'w-full h-full object-cover transition-transform duration-[400ms]', linkClass: 'md:order-2', infoClass: 'md:order-1', year: '2022', name: 'Círculo', description: 'A Círculo é uma tradicional marca brasileira de fios e linhas para crochê, tricô e bordado, que oferece produtos inovadores e de alta qualidade para artesãos no Brasil e no exterior. Além disso, disponibiliza gratuitamente em seu site receitas, dicas, tendências e conteúdos em um blog para inspirar e auxiliar quem cria peças artesanais.', technologies: ['Laravel', 'JavaScript', 'AWS'] },
  { href: 'https://lancaster.com.br/', image: estampotecaImage, alt: 'Lancaster - Estampoteca - Plataforma de Gestão de Estampas', imageClass: 'w-full h-full object-cover transition-transform duration-[400ms]', linkClass: '', infoClass: '', year: '2021', name: 'Estampoteca', description: 'A Estampoteca é o acervo digital de estampas da Lancaster, onde os clientes podem visualizar todas as opções disponíveis, personalizar cores e elementos para criar padrões exclusivos e até solicitar amostras diretamente pelo sistema.', technologies: ['Laravel', 'JavaScript'] },
]
</script>

<template>
  <div class="flex flex-col gap-10 md:gap-12">
    <div v-for="project in projects" :key="project.name"
      class="project-row grid grid-cols-1 md:grid-cols-2 gap-2 md:gap-10 items-center">
      <a :class="project.linkClass" :href="project.href" target="_blank">
        <div class="aspect-[4/3] rounded-md overflow-hidden bg-zinc-200 border border-zinc-200">
          <img :alt="project.alt" :src="project.image" :class="project.imageClass">
        </div>
      </a>
      <div :class="project.infoClass">
        <span class="hidden md:inline subtitle text-xs text-zinc-400 mb-3.5">{{ project.year }}</span>
        <h3 class="title font-bold text-lg text-zinc-700 leading-snug mb-1 md:mb-3">{{ project.name }}</h3>
        <p class="text-xs md:text-sm text-justify leading-relaxed text-zinc-500 mb-[18px]">{{ project.description }}</p>
        <div class="hidden md:flex gap-1.5 flex-wrap">
          <span v-for="technology in project.technologies" :key="technology"
            class="subtitle text-xs text-zinc-500 bg-zinc-200 py-1 px-2 rounded">{{ technology }}</span>
        </div>
      </div>
    </div>
  </div>
</template>
