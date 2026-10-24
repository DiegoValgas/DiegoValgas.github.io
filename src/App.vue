<script setup>
import TechnologySection from './components/TechnologySection.vue'
import ChallengeSection from './components/ChallengeSection.vue'
import ProjectSection from './components/ProjectSection.vue'
import ContentSection from './components/ContentSection.vue'
import SectionTitle from './components/SectionTitle.vue'
import SectionParagraph from './components/SectionParagraph.vue'
import SectionSubtitle from './components/SectionSubtitle.vue'
import Container from './components/Container.vue'
import SiteHeader from './components/SiteHeader.vue'
import SiteFooter from './components/SiteFooter.vue'
const personalInfo = {
  name: 'Diego Valgas',
  location: 'Blumenau, SC',
  email: 'diego.valgas@gmail.com',
  links: {
    whatsapp: 'https://wa.me/5547984247193',
    linkedin: 'https://www.linkedin.com/in/diego-valgas/',
    github: 'https://github.com/DiegoValgas',
    googleMaps: 'https://www.google.com/maps/place/Blumenau,+SC/@-26.8560081,-49.2639115,11z/data=!3m1!4b1!4m6!3m5!1s0x94df1e408b5c3095:0xacfb8520bc1a7644!8m2!3d-26.9165792!4d-49.0717331!16zL20vMDJ5Z2h6?entry=ttu&g_ep=EgoyMDI2MDkyMC4wIKXMDSoASAFQAw%3D%3D',
  },
}
</script>

<template>
  <Container class="px-4 sm:px-6 lg:px-8">
    <SiteHeader :personal-info="personalInfo" />

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
  </Container>
  <SiteFooter :personal-info="personalInfo" />
</template>
