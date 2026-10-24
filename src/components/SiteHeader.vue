<script setup>
import avatarImage from '../assets/images/avatar.jpeg'
import LocationIcon from './icons/LocationIcon.vue'
import EmailIcon from './icons/EmailIcon.vue'
import WhatsAppIcon from './icons/WhatsAppIcon.vue'
import LinkedInIcon from './icons/LinkedInIcon.vue'

defineProps({
  personalInfo: {
    type: Object,
    required: true,
  },
})

const navigation = [
  { href: '#sobre', label: 'Sobre' },
  { href: '#tecnologias', label: 'Stack' },
  { href: '#desafios', label: 'Desafios' },
  { href: '#projetos', label: 'Projetos' },
]
</script>

<template>
  <header class="grid grid-cols-1 md:grid-cols-2">
    <div class="avatar flex justify-center md:justify-end justify-center p-6 md:p-8">
      <img :src="avatarImage" :alt="personalInfo.name"
        class="w-[250px] md:w-[350px] max-w-full aspect-square rounded-full object-cover shadow-lg ring-2 ring-white" />
    </div>

    <div class="info flex h-full items-center justify-center md:justify-start">
      <div class="info-text flex flex-col items-center text-center md:items-start md:text-left">
        <h1 class="title font-extrabold text-[33px] text-zinc-700">{{ personalInfo.name }}</h1>

        <p class="subtitle text-xs text-zinc-400 mb-8 md:mb-4 lg:mb-6">DESENVOLVEDOR PHP FULL STACK</p>

        <a class="hidden lg:flex items-center text-sm text-zinc-500 gap-2" :href="personalInfo.links.googleMaps"
          target="_blank">
          <LocationIcon />
          {{ personalInfo.location }}
        </a>

        <a class="hidden lg:flex items-center text-sm text-zinc-500 gap-2 mb-4" :href="`mailto:${personalInfo.email}`">
          <EmailIcon />
          {{ personalInfo.email }}
        </a>

        <div class="contact-buttons flex flex-wrap gap-2.5 md:mb-4 lg:mb-8">
          <a class="inline-flex items-center gap-2 py-2.5 px-5 rounded text-sm font-medium text-zinc-100 bg-zinc-700 transition-colors hover:bg-zinc-800"
            :href="personalInfo.links.whatsapp" target="_blank">
            <WhatsAppIcon />WhatsApp
          </a>
          <a class="inline-flex items-center gap-2 py-2.5 px-5 rounded text-sm font-medium text-zinc-700 bg-transparent border border-zinc-200 transition-colors hover:bg-zinc-200 hover:border-zinc-400"
            :href="personalInfo.links.linkedin" target="_blank">
            <LinkedInIcon />LinkedIn
          </a>
        </div>

        <nav class="hidden md:inline-flex flex-wrap justify-center items-center gap-0.5 bg-zinc-200 rounded-md p-1">
          <a v-for="item in navigation" :key="item.href" :href="item.href"
            class="text-xs font-medium tracking-wide text-zinc-500 py-1.5 px-3 rounded whitespace-nowrap transition-colors hover:bg-zinc-100 hover:text-zinc-700">
            {{ item.label }}
          </a>
        </nav>
      </div>
    </div>
  </header>
</template>
