<script setup>
import CodeCraftersIcon from './icons/CodeCraftersIcon.vue'
import DatabaseIcon from './icons/DatabaseIcon.vue'
import APIIcon from './icons/APIIcon.vue'
import StructureIcon from './icons/StructureIcon.vue'
import SecurityIcon from './icons/SecurityIcon.vue'

const challenges = [
  { title: 'O código', description: 'Quando criança, você aprendeu seu idioma na escola: cada letra do alfabeto, cada regra gramatical, praticou a escrita à mão, tudo para se comunicar com as pessoas. Agora, você terá que passar por tudo isso novamente, mas desta vez para conversar com as máquinas.', icon: CodeCraftersIcon },
  { title: 'Dados', description: 'Quando o quarto está uma bagunça, encontrar o que você precisa pode levar mais tempo, isso se você conseguir encontrar o que procura. O mesmo acontece com os dados, onde o desafio está em garantir que as coisas sejam colocadas no lugar certo desde o início. Afinal, você não precisa arrumar o quarto se ele não estiver bagunçado.', icon: DatabaseIcon },
  { title: 'API', description: 'Comunicar-se com outros sistemas pode ser desafiador mesmo após muita experiência. Consumir serviços de APIs problemáticas e com documentação confusa é como estar perdido em um lugar onde as pessoas não falam o seu idioma.', icon: APIIcon },
  { title: 'Estrutura', description: 'O problema é parecido com o do quarto bagunçado: organização é essencial. Mas aqui estamos falando da estrutura de um sistema, onde uma boa arquitetura facilita a manutenção e o crescimento do software. Você aprendeu a escrever em um novo idioma; agora, é decidir onde cada assunto será escrito.', icon: StructureIcon },
  { title: 'Segurança', description: 'Colocar um cadeado na porta não vai impedir que invadam sua casa, pois você pode ter deixado uma janela aberta. Proteger-se também é uma necessidade em sistemas, e o desafio é que, nesse caso, diferente da porta da sua casa, o mundo inteiro tem acesso às portas que dão acesso ao seu sistema.', icon: SecurityIcon },
]
</script>

<template>
  <div class="relative pl-7">
    <div class="absolute left-[11px] top-3 bottom-3 w-px bg-zinc-200"></div>
    <div v-for="challenge in challenges" :key="challenge.title" class="relative flex items-start gap-5 pb-8">
      <div
        class="absolute -left-7 top-2.5 w-[22px] h-[22px] bg-zinc-100 flex items-center justify-center text-zinc-500 shrink-0">
        <component :is="challenge.icon" />
      </div>
      <div>
        <p class="title font-semibold text-sm text-zinc-700 mb-1.5 leading-snug">{{ challenge.title }}</p>
        <p class="text-xs md:text-sm text-justify leading-relaxed text-zinc-500">{{ challenge.description }}</p>
      </div>
    </div>
  </div>
</template>
