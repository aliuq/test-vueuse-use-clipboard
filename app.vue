<script setup lang="ts">
const { x, y } = useMouse()

const input = ref('')
const { text, copy, copied, isSupported } = useClipboard()
</script>

<template>
  <div class="wrapper">
    <div>pos: {{x}}, {{y}}</div>
    <br />
    <div>
      <p>
        isSupported: {{isSupported}}
      </p>
      <p>
        Current copied: <code>{{ text || 'none' }}</code>
      </p>
      <input v-model="input" type="text">
      <button @click="copy(input)">
        Copy
      </button>
      <p>
        Copied: {{copied}}
      </p>
    </div>
  </div>
</template>

<style>
body {
  background-color: #181818;
}
.wrapper {
  width: 500px;
  margin: 100px auto;
  color: white;
}
</style>