<script setup>
import Container from './Container.vue'

defineProps({
  personalInfo: {
    type: Object,
    required: true,
  },
})

const socialLinks = [
  { href: 'github', label: 'GitHub' },
  { href: 'linkedin', label: 'LinkedIn' },
  { href: 'whatsapp', label: 'WhatsApp' },
]
</script>

<template>
  <footer class="bg-zinc-700 text-zinc-100">
    <Container class="px-6 lg:px-10 py-14">
      <div class="grid md:grid-cols-3 gap-10">
        <div>
          <p class="subtitle text-xs text-zinc-500 mb-3">CONTATO</p>
          <p class="title font-bold text-2xl text-zinc-100 mb-2">{{ personalInfo.name }}</p>
          <a class="subtitle text-sm text-zinc-400" :href="`mailto:${personalInfo.email}`">
            {{ personalInfo.email }}
          </a>
        </div>

        <div>
          <p class="subtitle text-xs text-zinc-500 mb-3">LOCALIZAÇÃO</p>
          <a class="text-sm text-zinc-400 leading-relaxed" :href="personalInfo.links.googleMaps" target="_blank">
            {{ personalInfo.location }}<br />Brasil
          </a>
        </div>

        <div>
          <p class="subtitle text-xs text-zinc-500 mb-3.5">LINKS</p>

          <div class="flex flex-col gap-3">
            <a v-for="link in socialLinks" :key="link.href" :href="personalInfo.links[link.href]"
              class="text-sm text-zinc-400 no-underline transition-colors" target="_blank">
              {{ link.label }} →
            </a>
          </div>
        </div>
      </div>

      <div class="mt-12 pt-5 border-t border-zinc-600 flex justify-between items-center flex-wrap gap-2">
        <p class="subtitle text-xs text-zinc-500">
          © 2026 {{ personalInfo.name }}. Desenvolvedor PHP Full Stack.
        </p>

        <p class="subtitle text-xs text-zinc-600">
          &lt;made with code /&gt;
        </p>
      </div>
    </Container>
  </footer>
</template>
