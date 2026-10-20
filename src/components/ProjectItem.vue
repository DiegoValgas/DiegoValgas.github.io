<script setup>
import { defineProps } from 'vue'
const props = defineProps({ project: { type: Object, required: true } })
</script>
<template>
    <div class="project-row grid grid-cols-1 md:grid-cols-2 gap-2 md:gap-10 items-center"><a :class="project.linkClass"
            :href="project.href" target="_blank">
            <div class="aspect-[4/3] rounded-md overflow-hidden bg-zinc-200 border border-zinc-200"><img
                    :alt="project.alt" :src="project.image" :class="project.imageClass"></div>
        </a>
        <div :class="project.infoClass"><span class="hidden md:inline subtitle text-xs text-zinc-400 mb-3.5">{{
                project.year }}</span>
            <h3 class="title font-bold text-lg text-zinc-700 leading-snug mb-1 md:mb-3">{{ project.name }}</h3>
            <p class="text-xs md:text-sm text-justify leading-relaxed text-zinc-500 mb-[18px]">{{ project.description }}
            </p>
            <div class="hidden md:flex gap-1.5 flex-wrap"><span v-for="technology in project.technologies"
                    :key="technology" class="subtitle text-xs text-zinc-500 bg-zinc-200 py-1 px-2 rounded">{{ technology
                    }}</span></div>
        </div>
    </div>
</template>
