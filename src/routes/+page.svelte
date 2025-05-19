<script lang="ts">
  import ColorPicker from "./components/ColorPicker.svelte";
  import { store } from "$lib/store.svelte";
  import { fade } from "svelte/transition";

  let appWrapper: HTMLDivElement | undefined = $state(undefined);

  $effect(() => {
    if (!appWrapper) return;

    const handleEnter = () => (store.isHovering = true);
    const handleLeave = () => (store.isHovering = false);

    appWrapper.addEventListener("mouseenter", handleEnter);
    appWrapper.addEventListener("mouseleave", handleLeave);
    return () => {
      appWrapper?.removeEventListener("mouseenter", handleEnter);
      appWrapper?.removeEventListener("mouseleave", handleLeave);
    };
  });
</script>

<div class="group relative h-[100dvh] w-[100dvw]" bind:this={appWrapper}>
  <div
    class="absolute z-0 size-full"
    style="background-color: {store.bgColor}"
  ></div>

  {#if store.isHovering}
    <div
      transition:fade={{ duration: 100 }}
      id="bg-grid"
      class="absolute z-10 size-full bg-black/10 transition-colors duration-300"
    ></div>
  {/if}

  <div
    class="relative z-30 mx-auto flex h-[100dvh] w-full max-w-[1024px] items-center"
  >
    <aside class="h-[100dvh] w-1/4">
      <ColorPicker />
    </aside>
    <main class="h-[100dvh] w-1/2">b</main>
    <aside class="h-[100dvh] w-1/4">c</aside>
  </div>
</div>

<style>
  #bg-grid {
    background-size: 40px 40px;
    background-image:
      linear-gradient(to right, grey 1px, transparent 1px),
      linear-gradient(to bottom, grey 1px, transparent 1px);
  }
</style>
