<script setup>
import { ref } from 'vue'
import TechnologyCard from './components/TechnologyCard.vue'
import ChallengeItem from './components/ChallengeItem.vue'
import ProjectItem from './components/ProjectItem.vue'
import ContentSection from './components/ContentSection.vue'
import SectionTitle from './components/SectionTitle.vue'
import SectionParagraph from './components/SectionParagraph.vue'
import SectionSubtitle from './components/SectionSubtitle.vue'
import avatarImage from './assets/images/avatar.jpeg'
import boobamImage from './assets/images/boobam.png'
import circuloImage from './assets/images/circulo.png'
import estampotecaImage from './assets/images/estampoteca.png'
import LocationIcon from './components/icons/LocationIcon.vue'
import EmailIcon from './components/icons/EmailIcon.vue'
import WhatsAppIcon from './components/icons/WhatsAppIcon.vue'
import LinkedInIcon from './components/icons/LinkedInIcon.vue'
import PHPIcon from './components/icons/PHPIcon.vue'
import JavaScriptIcon from './components/icons/JavaScriptIcon.vue'
import DockerIcon from './components/icons/DockerIcon.vue'
import GitIcon from './components/icons/GitIcon.vue'
import HTMLIcon from './components/icons/HTMLIcon.vue'
import CSSIcon from './components/icons/CSSIcon.vue'
import MySQLIcon from './components/icons/MySQLIcon.vue'
import PostgreSQLIcon from './components/icons/PostgreSQLIcon.vue'
import RedisIcon from './components/icons/RedisIcon.vue'
import NodeJSIcon from './components/icons/NodeJSIcon.vue'
import VueIcon from './components/icons/VueIcon.vue'
import ClaudeIcon from './components/icons/ClaudeIcon.vue'
import CodeCraftersIcon from './components/icons/CodeCraftersIcon.vue'
import DatabaseIcon from './components/icons/DatabaseIcon.vue'
import APIIcon from './components/icons/APIIcon.vue'
import StructureIcon from './components/icons/StructureIcon.vue'
import SecurityIcon from './components/icons/SecurityIcon.vue'
const navigation = ref([{ href: '#sobre', label: 'Sobre' }, { href: '#tecnologias', label: 'Stack' }, { href: '#desafios', label: 'Desafios' }, { href: '#projetos', label: 'Projetos' }])
const contacts = ref([{ label: 'WhatsApp', href: 'https://wa.me/5547984247193', class: 'inline-flex items-center gap-2 py-2.5 px-5 rounded text-sm font-medium text-zinc-100 bg-zinc-700 transition-colors hover:bg-zinc-800', icon: WhatsAppIcon }, { label: 'LinkedIn', href: 'https://www.linkedin.com/in/diego-valgas/', class: 'inline-flex items-center gap-2 py-2.5 px-5 rounded text-sm font-medium text-zinc-700 bg-transparent border border-zinc-200 transition-colors hover:bg-zinc-200 hover:border-zinc-400', icon: LinkedInIcon }])
const technologies = ref([{ name: 'PHP', icon: PHPIcon },
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
{ name: 'Claude', icon: ClaudeIcon }])
const challenges = ref([{ title: 'O código', description: 'Quando criança, você aprendeu seu idioma na escola: cada letra do alfabeto, cada regra gramatical, praticou a escrita à mão, tudo para se comunicar com as pessoas. Agora, você terá que passar por tudo isso novamente, mas desta vez para conversar com as máquinas.', icon: CodeCraftersIcon },
{ title: 'Dados', description: 'Quando o quarto está uma bagunça, encontrar o que você precisa pode levar mais tempo, isso se você conseguir encontrar o que procura. O mesmo acontece com os dados, onde o desafio está em garantir que as coisas sejam colocadas no lugar certo desde o início. Afinal, você não precisa arrumar o quarto se ele não estiver bagunçado.', icon: DatabaseIcon },
{ title: 'API', description: 'Comunicar-se com outros sistemas pode ser desafiador mesmo após muita experiência. Consumir serviços de APIs problemáticas e com documentação confusa é como estar perdido em um lugar onde as pessoas não falam o seu idioma.', icon: APIIcon },
{ title: 'Estrutura', description: 'O problema é parecido com o do quarto bagunçado: organização é essencial. Mas aqui estamos falando da estrutura de um sistema, onde uma boa arquitetura facilita a manutenção e o crescimento do software. Você aprendeu a escrever em um novo idioma; agora, é decidir onde cada assunto será escrito.', icon: StructureIcon },
{ title: 'Segurança', description: 'Colocar um cadeado na porta não vai impedir que invadam sua casa, pois você pode ter deixado uma janela aberta. Proteger-se também é uma necessidade em sistemas, e o desafio é que, nesse caso, diferente da porta da sua casa, o mundo inteiro tem acesso às portas que dão acesso ao seu sistema.', icon: SecurityIcon }])
const projects = ref([{ "href": "https://boobam.com.br/", "image": boobamImage, "alt": "Boobam - Plataforma brasileira com curadoria de peças de designers, artistas e arquitetos", "imageClass": "w-full h-full object-cover transition-transform duration-[400ms]", "linkClass": "", "infoClass": "", "year": "2023", "name": "Boobam", "description": "A Boobam é uma plataforma brasileira com curadoria de peças de designers, artistas e arquitetos, que conecta esses criadores diretamente a quem admira e compra design autoral. Ela oferece mobiliário, objetos e soluções personalizadas para ambientes, com um consultor que acompanha o cliente da escolha ao pós-venda.", "technologies": ["PHP", "Javascript"] }, { "href": "https://www.circulo.com.br/", "image": circuloImage, "alt": "Circulo - Tradicional marca brasileira de fios e linhas", "imageClass": "w-full h-full object-cover transition-transform duration-[400ms]", "linkClass": "md:order-2", "infoClass": "md:order-1", "year": "2022", "name": "Círculo", "description": "A Círculo é uma tradicional marca brasileira de fios e linhas para crochê, tricô e bordado, que oferece produtos inovadores e de alta qualidade para artesãos no Brasil e no exterior. Além disso, disponibiliza gratuitamente em seu site receitas, dicas, tendências e conteúdos em um blog para inspirar e auxiliar quem cria peças artesanais.", "technologies": ["Laravel", "JavaScript", "AWS"] }, { "href": "https://lancaster.com.br/", "image": estampotecaImage, "alt": "Lancaster - Estampoteca - Plataforma de Gestão de Estampas", "imageClass": "w-full h-full object-cover transition-transform duration-[400ms]", "linkClass": "", "infoClass": "", "year": "2021", "name": "Estampoteca", "description": "A Estampoteca é o acervo digital de estampas da Lancaster, onde os clientes podem visualizar todas as opções disponíveis, personalizar cores e elementos para criar padrões exclusivos e até solicitar amostras diretamente pelo sistema.", "technologies": ["Laravel", "JavaScript"] }])
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

      <div class="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-4">
        <TechnologyCard v-for="technology in technologies" :key="technology.name" :technology="technology" />
      </div>
    </ContentSection>

    <ContentSection id="desafios">
      <SectionTitle class="mb-3">Desafios</SectionTitle>

      <SectionSubtitle class="mb-9">
        // Alguns dos desafios técnicos superados ao longo da carreira.
      </SectionSubtitle>

      <div class="relative pl-7">
        <div class="absolute left-[11px] top-3 bottom-3 w-px bg-zinc-200"></div>
        <ChallengeItem v-for="challenge in challenges" :key="challenge.title" :challenge="challenge" />
      </div>
    </ContentSection>

    <ContentSection id="projetos">
      <SectionTitle class="mb-3">Projetos</SectionTitle>

      <SectionSubtitle class="mb-9">
        // Projetos que ajudei a construir.
      </SectionSubtitle>

      <div class="flex flex-col gap-10 md:gap-12">
        <ProjectItem v-for="project in projects" :key="project.name" :project="project" />
      </div>
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
