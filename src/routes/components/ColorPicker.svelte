<script lang="ts">
  import { store } from "$lib/store.svelte";
</script>

<label class="flex flex-col gap-2">
  <span>Background Color</span>
  <input class="h-[40px] w-full" type="color" bind:value={store.bgColor} />
  <button class="btn" onclick={() => (store.bgColor = "#00ff00")}>
    Set Green
  </button>
</label>
