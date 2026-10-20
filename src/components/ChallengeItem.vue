<script setup>
import { defineProps } from 'vue'
const props = defineProps({ challenge: { type: Object, required: true } })
</script>
<template>
    <div class="relative flex items-start gap-5 pb-8">
        <div
            class="absolute -left-7 top-2.5 w-[22px] h-[22px] bg-zinc-100 flex items-center justify-center text-zinc-500 shrink-0">
            <component :is="challenge.icon" />
        </div>
        <div>
            <p class="title font-semibold text-sm text-zinc-700 mb-1.5 leading-snug">{{ challenge.title }}</p>
            <p class="text-xs md:text-sm text-justify leading-relaxed text-zinc-500">{{ challenge.description }}</p>
        </div>
    </div>
</template>
