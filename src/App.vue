<script setup>
import TechnologySection from './components/TechnologySection.vue'
import ChallengeSection from './components/ChallengeSection.vue'
import ProjectSection from './components/ProjectSection.vue'
import ContentSection from './components/ContentSection.vue'
import SectionTitle from './components/SectionTitle.vue'
import SectionParagraph from './components/SectionParagraph.vue'
import SectionSubtitle from './components/SectionSubtitle.vue'
import avatarImage from './assets/images/avatar.jpeg'
import LocationIcon from './components/icons/LocationIcon.vue'
import EmailIcon from './components/icons/EmailIcon.vue'
import WhatsAppIcon from './components/icons/WhatsAppIcon.vue'
import LinkedInIcon from './components/icons/LinkedInIcon.vue'
const navigation = [{ href: '#sobre', label: 'Sobre' }, { href: '#tecnologias', label: 'Stack' }, { href: '#desafios', label: 'Desafios' }, { href: '#projetos', label: 'Projetos' }]
const contacts = [{ label: 'WhatsApp', href: 'https://wa.me/5547984247193', class: 'inline-flex items-center gap-2 py-2.5 px-5 rounded text-sm font-medium text-zinc-100 bg-zinc-700 transition-colors hover:bg-zinc-800', icon: WhatsAppIcon }, { label: 'LinkedIn', href: 'https://www.linkedin.com/in/diego-valgas/', class: 'inline-flex items-center gap-2 py-2.5 px-5 rounded text-sm font-medium text-zinc-700 bg-transparent border border-zinc-200 transition-colors hover:bg-zinc-200 hover:border-zinc-400', icon: LinkedInIcon }]
</script>

<template>
  <main class="container mx-auto w-full max-w-4xl px-4 sm:px-6 lg:px-8">
    <header class="grid grid-cols-1 md:grid-cols-2">
      <div class="avatar flex justify-center md:justify-end justify-center p-6 md:p-8">
        <img :src="avatarImage" alt="Diego Valgas"
          class="w-[250px] md:w-[350px] max-w-full aspect-square rounded-full object-cover shadow-lg ring-2 ring-white" />
      </div>

      <div class="info flex h-full items-center justify-center md:justify-start">
        <div class="info-text flex flex-col items-center text-center md:items-start md:text-left">
          <h1 class="title font-extrabold text-[33px] text-zinc-700">Diego Valgas</h1>

          <p class="subtitle text-xs text-zinc-400 mb-8 md:mb-4 lg:mb-6">DESENVOLVEDOR PHP FULL STACK</p>

          <a class="hidden lg:flex items-center text-sm text-zinc-500 gap-2"
            href="https://www.google.com/maps/place/Blumenau,+SC/@-26.8560081,-49.2639115,11z/data=!3m1!4b1!4m6!3m5!1s0x94df1e408b5c3095:0xacfb8520bc1a7644!8m2!3d-26.9165792!4d-49.0717331!16zL20vMDJ5Z2h6?entry=ttu&g_ep=EgoyMDI2MDkyMC4wIKXMDSoASAFQAw%3D%3D"
            target="_blank">
            <LocationIcon />
            Blumenau, SC
          </a>

          <a class="hidden lg:flex items-center text-sm text-zinc-500 gap-2 mb-4" href="mailto:diego.valgas@gmail.com">
            <EmailIcon />
            diego.valgas@gmail.com
          </a>

          <div class="contact-buttons flex flex-wrap gap-2.5 md:mb-4 lg:mb-8"><a v-for="contact in contacts"
              :key="contact.label" :class="contact.class" :href="contact.href" target="_blank">
              <component :is="contact.icon" />{{ contact.label }}
            </a></div>

          <nav class="hidden md:inline-flex flex-wrap justify-center items-center gap-0.5 bg-zinc-200 rounded-md p-1"><a
              v-for="item in navigation" :key="item.href" :href="item.href"
              class="text-xs font-medium tracking-wide text-zinc-500 py-1.5 px-3 rounded whitespace-nowrap transition-colors hover:bg-zinc-100 hover:text-zinc-700">{{
              item.label }}</a></nav>
        </div>
      </div>
    </header>

    <ContentSection id="sobre">
      <SectionTitle class="mb-5">
        Antes do código...
      </SectionTitle>

      <SectionParagraph class="mb-4">
        Nem sempre é fácil descrever uma trajetória de carreira em poucas palavras, especialmente em tecnologia, onde o
        aprendizado constante apaga fragmentos do que sabemos para abrir espaço a novos conceitos. Isso molda a forma
        como enxergamos os desafios do dia a dia, sejam pessoais ou resolvidos com código, pois todos exigem olhar além
        do que está visível.
      </SectionParagraph>

      <SectionParagraph>
        Olhar para um problema de outro ângulo é essencial. Isso pode dissipar o nevoeiro que esconde os melhores
        caminhos e nos impede de enxergar alternativas, forçando-nos a seguir a rota tortuosa da solução mais óbvia.
        Essa postura nos obriga a nos adaptar constantemente, pois é ao examinar um desafio por diferentes perspectivas
        que encontramos soluções mais próximas de um resultado realmente definitivo. Foi assim que percebi a importância
        de desenvolver habilidades além do código, fundamentais para resolver questões complexas com eficácia.
      </SectionParagraph>
    </ContentSection>

    <ContentSection id="tecnologias">
      <SectionTitle class="mb-3">Stack</SectionTitle>

      <SectionSubtitle class="mb-9">
        // Principais tecnologias que já utilizei em projetos.
      </SectionSubtitle>

      <TechnologySection />
    </ContentSection>

    <ContentSection id="desafios">
      <SectionTitle class="mb-3">Desafios</SectionTitle>

      <SectionSubtitle class="mb-9">
        // Alguns dos desafios técnicos superados ao longo da carreira.
      </SectionSubtitle>

      <ChallengeSection />
    </ContentSection>

    <ContentSection id="projetos">
      <SectionTitle class="mb-3">Projetos</SectionTitle>

      <SectionSubtitle class="mb-9">
        // Projetos que ajudei a construir.
      </SectionSubtitle>

      <ProjectSection />
    </ContentSection>
  </main>
  <footer class="bg-zinc-700 text-zinc-100">
    <div class="container mx-auto w-full max-w-4xl px-6 lg:px-10 py-14">
      <div class="grid md:grid-cols-3 gap-10">
        <div>
          <p class="subtitle text-xs text-zinc-500 mb-3">CONTATO</p>
          <p class="title font-bold text-2xl text-zinc-100 mb-2">Diego Valgas</p>
          <a class="subtitle text-sm text-zinc-400" href="mailto:diego.valgas@gmail.com">
            diego.valgas@gmail.com
          </a>
        </div>

        <div>
          <p class="subtitle text-xs text-zinc-500 mb-3">LOCALIZAÇÃO</p>
          <a class="text-sm text-zinc-400 leading-relaxed"
            href="https://www.google.com/maps/place/Blumenau,+SC/@-26.8560081,-49.2639115,11z/data=!3m1!4b1!4m6!3m5!1s0x94df1e408b5c3095:0xacfb8520bc1a7644!8m2!3d-26.9165792!4d-49.0717331!16zL20vMDJ5Z2h6?entry=ttu&g_ep=EgoyMDI2MDkyMC4wIKXMDSoASAFQAw%3D%3D"
            target="_blank">
            Blumenau, SC<br />Brasil
          </a>
        </div>

        <div>
          <p class="subtitle text-xs text-zinc-500 mb-3.5">LINKS</p>

          <div class="flex flex-col gap-3">
            <a href="https://github.com/DiegoValgas" class="text-sm text-zinc-400 no-underline transition-colors"
              target="_blank">
              GitHub →
            </a>
            <a href="https://www.linkedin.com/in/diego-valgas/"
              class="text-sm text-zinc-400 no-underline transition-colors" target="_blank">
              LinkedIn →
            </a>
            <a href="https://wa.me/5547984247193" class="text-sm text-zinc-400 no-underline transition-colors"
              target="_blank">
              WhatsApp →
            </a>
          </div>
        </div>
      </div>

      <div class="mt-12 pt-5 border-t border-zinc-600 flex justify-between items-center flex-wrap gap-2">
        <p class="subtitle text-xs text-zinc-500">
          © 2026 Diego Valgas. Desenvolvedor PHP Full Stack.
        </p>

        <p class="subtitle text-xs text-zinc-600">
          &lt;made with code /&gt;
        </p>
      </div>
    </div>
  </footer>
</template>
