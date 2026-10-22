<script setup>
import PHPIcon from './icons/PHPIcon.vue'
import JavaScriptIcon from './icons/JavaScriptIcon.vue'
import DockerIcon from './icons/DockerIcon.vue'
import GitIcon from './icons/GitIcon.vue'
import HTMLIcon from './icons/HTMLIcon.vue'
import CSSIcon from './icons/CSSIcon.vue'
import MySQLIcon from './icons/MySQLIcon.vue'
import PostgreSQLIcon from './icons/PostgreSQLIcon.vue'
import RedisIcon from './icons/RedisIcon.vue'
import NodeJSIcon from './icons/NodeJSIcon.vue'
import VueIcon from './icons/VueIcon.vue'
import ClaudeIcon from './icons/ClaudeIcon.vue'

const technologies = [
  { name: 'PHP', icon: PHPIcon },
  { name: 'JavaScript', icon: JavaScriptIcon },
  { name: 'Docker', icon: DockerIcon },
  { name: 'Git', icon: GitIcon },
  { name: 'HTML', icon: HTMLIcon },
  { name: 'CSS', icon: CSSIcon },
  { name: 'MySQL', icon: MySQLIcon },
  { name: 'PostgreSQL', icon: PostgreSQLIcon },
  { name: 'Redis', icon: RedisIcon },
  { name: 'Node.js', icon: NodeJSIcon },
  { name: 'Vue.js', icon: VueIcon },
  { name: 'Claude', icon: ClaudeIcon },
]
</script>

<template>
  <div class="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-4">
    <div v-for="technology in technologies" :key="technology.name"
      class="flex flex-col items-start gap-2.5 p-4 bg-zinc-200 rounded-md cursor-default transition-colors">
      <div class="text-zinc-500">
        <component :is="technology.icon" />
      </div>
      <span class="subtitle text-xs text-zinc-700 font-medium">{{ technology.name }}</span>
    </div>
  </div>
</template>
