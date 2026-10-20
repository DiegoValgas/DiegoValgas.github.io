<script setup>
import { defineProps } from 'vue'
const props = defineProps({ technology: { type: Object, required: true } })
</script>
<template>
    <div class="flex flex-col items-start gap-2.5 p-4 bg-zinc-200 rounded-md cursor-default transition-colors">
        <div class="text-zinc-500">
            <component :is="technology.icon" />
        </div><span class="subtitle text-xs text-zinc-700 font-medium">{{ technology.name }}</span>
    </div>
</template>
