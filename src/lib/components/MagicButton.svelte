<script lang="ts">
  import { Icon as IconType } from "lucide-svelte";
  let {
    text,
    position,
    icon,
  }: { text: string; position?: string; icon?: typeof IconType } = $props();
</script>

<button
  class="relative inline-flex h-12 overflow-hidden rounded-lg p-[1px]
  focus:outline-none md:w-60 md:mt-10"
>
  <span
    class="absolute inset-[-1000%] animate-[spin_5s_linear_infinite]
    bg-[conic-gradient(from_90deg_at_50%_50%,#E2CBFF_0%,#393BB2_50%,#E2CBFF_100%)]"
  ></span>

  <span
    class="inline-flex h-full w-full cursor-pointer items-center
      justify-center rounded-lg bg-slate-950 px-7 text-sm font-medium
     text-white backdrop-blur-3xl gap-2"
  >
    {#if position === "left"}
      {#if icon}
        {@const SvelteComponent = icon}
        <SvelteComponent />
      {/if}
      {text}
    {:else if position === "right"}
      {text}
      {#if icon}
        {@const SvelteComponent = icon}
        <SvelteComponent />
      {/if}
    {:else}
      {text}
    {/if}
  </span>
</button>
